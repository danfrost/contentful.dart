library post;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/contentful_dart.dart' show Entry, SystemFields;
import 'package:flutter_example/src/models/post_fields.dart';
import 'package:flutter_example/src/models/serializers.dart';

part 'post.g.dart';

abstract class Post extends Object
    with Entry<PostFields>
    implements Built<Post, PostBuilder> {
  static Serializer<Post> get serializer => _$postSerializer;
  factory Post([updates(PostBuilder b)]) = _$Post;

  Post._();

  PostFields get fields;

  SystemFields get sys;

  String toJson() {
    return json.encode(serializers.serializeWith(Post.serializer, this));
  }

  static Post fromJson(String jsonString) {
    return serializers.deserializeWith(
        Post.serializer, json.decode(jsonString));
  }

  static BuiltList<Post> parseListOfPosts(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return deserializeListOf<Post>(parsed);
  }
}
