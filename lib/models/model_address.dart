import 'package:json_annotation/json_annotation.dart';
// flutter pub run build_runner build --delete-conflicting-outputs

import 'model_geo.dart';

part 'model_address.g.dart';

@JsonSerializable()
class ModelAddress {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final ModelGeo? geo;
  const ModelAddress({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory ModelAddress.fromJson(Map<String,dynamic> data) => _$ModelAddressFromJson(data);
  Map<String,dynamic> toJson() => _$ModelAddressToJson(this);
}
