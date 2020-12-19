import 'package:dio/dio.dart';
import 'package:posts/app/shared/repositories/post_repository.dart';

import 'posts_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'posts_page.dart';

class PostsModule extends ChildModule {
  @override
  List<Bind> get binds => [
      Bind((i) => Dio()),
      Bind((i) => PostRepository(i.get())),
      Bind((i) => PostsController(i.get())),
  ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PostsPage()),
      ];

  static Inject get to => Inject<PostsModule>.of();
}
