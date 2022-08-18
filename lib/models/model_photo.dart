import 'package:json_annotation/json_annotation.dart';
// flutter pub run build_runner build --delete-conflicting-outputs

part 'model_photo.g.dart';

@JsonSerializable()
class ModelPhoto {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  ModelPhoto({required this.albumId, required this.id, required this.title, required this.url, required this.thumbnailUrl});

  factory ModelPhoto.fromJson(Map<String,dynamic> data) => _$ModelPhotoFromJson(data);
  Map<String,dynamic> toJson() => _$ModelPhotoToJson(this);
}