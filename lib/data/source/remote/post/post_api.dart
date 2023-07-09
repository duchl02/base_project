import 'package:base_project/data/model/post/post.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'post_api.g.dart';

@injectable
@RestApi()
abstract class PostApi {
  @factoryMethod
  factory PostApi(@Named('mockApi') Dio dio) = _PostApi;
  @GET('/posts/{id}')
  Future<Post?> getDetailById(
    @Path() int id,
  );

  @GET('/posts')
  Future<List<Post>> getAllPost();
}
