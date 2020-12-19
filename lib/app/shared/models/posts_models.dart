// To parse this JSON data, do
//
//     final postsModel = postsModelFromMap(jsonString);

import 'dart:convert';

PostsModel postsModelFromMap(String str) => PostsModel.fromMap(json.decode(str));

String postsModelToMap(PostsModel data) => json.encode(data.toMap());

class PostsModel {
    PostsModel({
        this.greeting,
        this.instructions,
    });

    String greeting;
    List<String> instructions;

    PostsModel copyWith({
        String greeting,
        List<String> instructions,
    }) => 
        PostsModel(
            greeting: greeting ?? this.greeting,
            instructions: instructions ?? this.instructions,
        );

    factory PostsModel.fromMap(Map<String, dynamic> json) => PostsModel(
        greeting: json["greeting"] == null ? null : json["greeting"],
        instructions: json["instructions"] == null ? null : List<String>.from(json["instructions"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "greeting": greeting == null ? null : greeting,
        "instructions": instructions == null ? null : List<dynamic>.from(instructions.map((x) => x)),
    };
}
