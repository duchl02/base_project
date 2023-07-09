import 'dart:convert';
import 'dart:io';

import 'package:base_project/core/error/error/server_error.dart';
import 'package:base_project/core/error/exception/base/exception_mapper.dart';
import 'package:dio/dio.dart';

import '../remote_exception.dart';

class DioExceptionMapper extends ExceptionMapper<RemoteException> {
  DioExceptionMapper();

  @override
  RemoteException map(Object? exception) {
    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.cancel:
          return const RemoteException(kind: RemoteExceptionKind.cancellation);
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return RemoteException(
            kind: RemoteExceptionKind.timeout,
            rootException: exception,
          );
        case DioExceptionType.badResponse:
          final httpErrorCode = exception.response?.statusCode ?? -1;

          /// server-defined error
          if (exception.response?.data != null) {
            final Map<String, dynamic> responseError =
                exception.response!.data! is Map<String, dynamic>
                    ? exception.response!.data!
                    : jsonDecode((exception.response?.data).toString());

            final serverError = ServerError(
              generalServerStatusCode: responseError['status'],
              generalServerErrorType: responseError['type'],
              generalServerErrorId: responseError['code'],
              generalMessage: responseError['message'],
            );

            return RemoteException(
              kind: RemoteExceptionKind.serverDefined,
              httpErrorCode: httpErrorCode,
              serverError: serverError,
            );
          }

          return RemoteException(
            kind: RemoteExceptionKind.serverUndefined,
            httpErrorCode: httpErrorCode,
            rootException: exception,
          );
        case DioExceptionType.badCertificate:
          return RemoteException(
              kind: RemoteExceptionKind.badCertificate,
              rootException: exception);
        case DioExceptionType.connectionError:
          return RemoteException(
              kind: RemoteExceptionKind.network, rootException: exception);
        case DioExceptionType.unknown:
          if (exception is SocketException) {}

          if (exception.error is RemoteException) {
            return exception.error as RemoteException;
          }
      }
    }

    return RemoteException(
        kind: RemoteExceptionKind.unknown, rootException: exception);
  }
}
