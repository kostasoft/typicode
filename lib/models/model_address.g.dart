// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelAddress _$ModelAddressFromJson(Map<String, dynamic> json) => ModelAddress(
      street: json['street'] as String?,
      suite: json['suite'] as String?,
      city: json['city'] as String?,
      zipcode: json['zipcode'] as String?,
      geo: json['geo'] == null
          ? null
          : ModelGeo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModelAddressToJson(ModelAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };
