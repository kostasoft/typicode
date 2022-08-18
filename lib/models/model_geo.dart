import 'package:json_annotation/json_annotation.dart';
// flutter pub run build_runner build --delete-conflicting-outputs

part 'model_geo.g.dart';

@JsonSerializable()
class ModelGeo {
  final String lat;
  final String lng;
  const ModelGeo({required this.lat, required this.lng});

  factory ModelGeo.fromJson(Map<String,dynamic> data) => _$ModelGeoFromJson(data);
  Map<String,dynamic> toJson() => _$ModelGeoToJson(this);
}
