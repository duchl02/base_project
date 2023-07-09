import 'dart:developer';

import 'package:base_project/core/error/exception/mapper/dio_exception.dart';
import 'package:base_project/core/error/exception/remote_exception.dart';
import 'package:retrofit/retrofit.dart';

class RepositoryUtils {
  Future<T> requestApi<T>({
    required Future<HttpResponse<T>> Function() api,
  }) async {
    return runAsyncCatching<T>(action: () async {
      final response = await api();

      return response.data;
    });
  }

  Future<O> runAsyncCatching<O>({
    required Future<O> Function() action,
  }) async {
    try {
      final output = await action.call();

      return output;
    } catch (e, s) {
      log('runAsyncCatching error: $e, $s');
      throw _remoteErrorMapper(e);
    }
  }

  RemoteException _remoteErrorMapper(Object error) {
    throw DioExceptionMapper().map(error);
  }
}
