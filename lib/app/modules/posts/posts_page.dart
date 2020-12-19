import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
