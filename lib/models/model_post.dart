import 'package:json_annotation/json_annotation.dart';
// flutter pub run build_runner build --delete-conflicting-outputs

part 'model_post.g.dart';

@JsonSerializable()
class ModelPost {
  final int userId;
  final int id;
  final String title;
  final String body;

  ModelPost({required this.userId, required this.id, required this.title, required this.body});

  factory ModelPost.fromJson(Map<String,dynamic> data) => _$ModelPostFromJson(data);
  Map<String,dynamic> toJson() => _$ModelPostToJson(this);
}