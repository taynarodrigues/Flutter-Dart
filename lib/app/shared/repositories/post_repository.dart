import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:posts/app/shared/models/posts_models.dart';



class PostRepository extends Disposable {
  final Dio client;
  PostRepository(this.client);
  
  Future<List<PostsModel>> fetchPosts() async {
    Response<List> response =  
      await this.client.get('https://jsonplaceholder.typicode.com/posts');
    List<PostsModel> list = response.data.map((e) => PostsModel.fromMap(e)).toList();
    return list;
  }

  @override
  void dispose(){}

}