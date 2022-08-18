// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelCompany _$ModelCompanyFromJson(Map<String, dynamic> json) => ModelCompany(
      name: json['name'] as String?,
      catchPhrase: json['catchPhrase'] as String?,
      bs: json['bs'] as String?,
    );

Map<String, dynamic> _$ModelCompanyToJson(ModelCompany instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
