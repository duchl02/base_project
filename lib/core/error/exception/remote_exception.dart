import 'package:base_project/core/error/error/server_error.dart';

import 'base/app_exception.dart';

class RemoteException extends AppException {
  const RemoteException({
    required this.kind,
    this.httpErrorCode,
    this.serverError,
    this.rootException,
  }) : super(AppExceptionType.remote);

  final RemoteExceptionKind kind;
  final int? httpErrorCode;
  final ServerError? serverError;
  final Object? rootException;

  String? get generalServerStatusCode => serverError?.generalServerStatusCode;

  String? get generalServerErrorId => serverError?.generalServerErrorId;

  String? get generalServerMessage => serverError?.generalMessage;

  @override
  String toString() {
    return '''RemoteException: {
      kind: $kind
      httpErrorCode: $httpErrorCode,
      serverError: $serverError,
      rootException: $rootException,
      generalServerMessage: $generalServerMessage,
      generalServerErrorCode: $generalServerStatusCode,
      generalServerErrorId: $generalServerErrorId,
      stackTrace: ${rootException is Error ? (rootException as Error).stackTrace : ''}
}''';
  }
}

enum RemoteExceptionKind {
  noInternet,

  /// host not found, cannot connect to host
  network,

  /// server has defined response
  serverDefined,

  /// server has not defined response
  serverUndefined,

  /// Fail https requests for older devices.
  badCertificate,

  refreshTokenFailed,
  timeout,
  cancellation,
  unknown,
}
