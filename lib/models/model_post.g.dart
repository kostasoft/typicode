// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelPost _$ModelPostFromJson(Map<String, dynamic> json) => ModelPost(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$ModelPostToJson(ModelPost instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
