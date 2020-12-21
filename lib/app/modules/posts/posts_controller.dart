import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:posts/app/shared/models/posts_models.dart';
import 'package:posts/app/shared/repositories/post_repository.dart';

part 'posts_controller.g.dart';

@Injectable()
class PostsController = _PostsControllerBase with _$PostsController;

abstract class _PostsControllerBase with Store {

  final PostRepository _repository;

  _PostsControllerBase(this._repository){
     this.fetchPosts();
}   

  @observable
  ObservableFuture<List<PostsModel>> posts;


  @action
  fetchPosts() async {
    this.posts = this._repository.fetchPosts().asObservable();
  }
}
