// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostsController on _PostsControllerBase, Store {
  final _$postsAtom = Atom(name: '_PostsControllerBase.posts');

  @override
  ObservableFuture<List<PostsModel>> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(ObservableFuture<List<PostsModel>> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$fetchPostsAsyncAction =
      AsyncAction('_PostsControllerBase.fetchPosts');

  @override
  Future fetchPosts() {
    return _$fetchPostsAsyncAction.run(() => super.fetchPosts());
  }

  @override
  String toString() {
    return '''
posts: ${posts}
    ''';
  }
}
