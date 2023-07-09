import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'dio_config.dart';

Dio createDio({
  required BaseOptions baseOptions,
  List<Interceptor> interceptors = const [],
  DioLogConfig dioLogConfig = const DioLogConfig(),
}) {
  final dio = Dio();

  dio
    ..options.baseUrl = baseOptions.baseUrl
    ..options.connectTimeout = baseOptions.connectTimeout
    ..options.receiveTimeout = baseOptions.receiveTimeout
    ..options.headers = {
      'Content-Type': 'application/json; charset=utf-8',
      ...baseOptions.headers
    };

  final sortedInterceptors = [
    PrettyDioLogger(
      request: dioLogConfig.request,
      requestHeader: dioLogConfig.requestHeader,
      requestBody: dioLogConfig.requestBody,
      responseBody: dioLogConfig.responseBody,
      responseHeader: dioLogConfig.responseHeader,
      error: dioLogConfig.error,
      compact: dioLogConfig.compact,
    ),
    ...interceptors
  ];

  dio.interceptors.addAll(sortedInterceptors);

  return dio;
}
