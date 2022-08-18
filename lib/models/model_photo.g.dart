// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelPhoto _$ModelPhotoFromJson(Map<String, dynamic> json) => ModelPhoto(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$ModelPhotoToJson(ModelPhoto instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
