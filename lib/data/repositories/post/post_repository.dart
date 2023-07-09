import 'package:base_project/core/base/repository_utils.dart';
import 'package:base_project/data/model/post/post.dart';
import 'package:base_project/data/source/remote/post/post_api.dart';
import 'package:injectable/injectable.dart';

abstract class PostRepository {
  Future<List<Post>> findPosts();
  Future<Post?> findPostById(int id);
}

@Injectable(as: PostRepository)
class PostRepositoryImpl extends RepositoryUtils implements PostRepository {
  PostRepositoryImpl(this._api);

  final PostApi _api;

  @override
  Future<Post?> findPostById(int id) {
    return runAsyncCatching(action: () {
      return _api.getDetailById(id);
    });
  }

  @override
  Future<List<Post>> findPosts() {
    return _api.getAllPost();
  }
}
