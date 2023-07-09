abstract class AppError implements Exception {
  const AppError(this.appErrorType);

  final AppErrorType appErrorType;
}

enum AppErrorType {
  netWork,
  validation,
}
