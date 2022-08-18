import 'package:json_annotation/json_annotation.dart';
// flutter pub run build_runner build --delete-conflicting-outputs

part 'model_company.g.dart';

@JsonSerializable()
class ModelCompany{
  final String? name;
  final String? catchPhrase;
  final String? bs;

  ModelCompany({this.name, this.catchPhrase, this.bs});

  factory ModelCompany.fromJson(Map<String,dynamic> data) => _$ModelCompanyFromJson(data);
  Map<String,dynamic> toJson() => _$ModelCompanyToJson(this);
}
