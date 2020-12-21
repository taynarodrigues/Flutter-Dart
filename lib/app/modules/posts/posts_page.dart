import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:posts/app/shared/models/posts_models.dart';
import 'posts_controller.dart';

class PostsPage extends StatefulWidget {
  
  final String title;
  const PostsPage({Key key, this.title = "Posts"}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends ModularState<PostsPage, PostsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (_) {
        if (controller.posts == null) {
          return
            Container(
              child: Center(
                child: Text('Sem dados')
              )
            );
        }

        if (controller.posts.status == FutureStatus.pending) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            )
          );
        }

        if (controller.posts.status == FutureStatus.rejected) {
          return Container(
            child: Center(
              child: Text('Rejeitado'),
            )
          );
        }

        List<PostsModel> posts = controller.posts.value;

        var title;
        return Container(
          child: ListView.separated(
            itemBuilder: (_, i) => Card(
              child: Container(
                child: Center(
                  child: Text('${posts[i].title}')
                ),
              )
            ),
            separatorBuilder: (_, i) => SizedBox(height: 20,),
            itemCount: posts.length
          ),
        );
      }),
    );
  }
}



