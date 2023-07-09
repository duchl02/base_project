import 'package:base_project/core/constants/url_constans.dart';
import 'package:base_project/data/source/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioClient {
  @Named('mockApi')
  @singleton
  Dio mockApi() =>
      createDio(baseOptions: BaseOptions(baseUrl: UrlConstants.mockApi));
}
