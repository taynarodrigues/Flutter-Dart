// To parse this JSON data, do
//
//     final postsModel = postsModelFromMap(jsonString);

import 'dart:convert';

PostsModel postsModelFromMap(String str) => PostsModel.fromMap(json.decode(str));

String postsModelToMap(PostsModel data) => json.encode(data.toMap());

class PostsModel {
    PostsModel({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    int userId;
    int id;
    String title;
    String body;

    PostsModel copyWith({
        int userId,
        int id,
        String title,
        String body,
    }) => 
        PostsModel(
            userId: userId ?? this.userId,
            id: id ?? this.id,
            title: title ?? this.title,
            body: body ?? this.body,
        );

    factory PostsModel.fromMap(Map<String, dynamic> json) => PostsModel(
        userId: json["userId"] == null ? null : json["userId"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        body: json["body"] == null ? null : json["body"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId == null ? null : userId,
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "body": body == null ? null : body,
    };
}