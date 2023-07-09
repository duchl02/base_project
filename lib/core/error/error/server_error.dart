class ServerError {
  ServerError({
    this.generalServerErrorType,
    this.generalServerStatusCode,
    this.generalServerErrorId,
    this.generalMessage,
  });

  /// server-defined status code
  final String? generalServerStatusCode;

  /// server-defined error type
  final String? generalServerErrorType;

  /// server-defined error id
  final String? generalServerErrorId;

  /// server-defined message
  final String? generalMessage;

  @override
  String toString() =>
      'ServerError(generalServerStatusCode: $generalServerStatusCode, generalServerErrorId: $generalServerErrorId, generalServerErrorType: $generalServerErrorType, generalMessage: $generalMessage)';
}
