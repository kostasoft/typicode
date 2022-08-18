import 'package:json_annotation/json_annotation.dart';
// flutter pub run build_runner build --delete-conflicting-outputs

import 'model_address.dart';
import 'model_company.dart';

part 'model_user.g.dart';

@JsonSerializable()
class ModelUser {
  final int id;
  final String? name;
  final String? username;
  final String? email;
  final ModelAddress? address;
  final String? phone;
  final String? website;
  final ModelCompany? company;

  ModelUser({required this.id, this.name, this.username, this.email, this.address, this.phone, this.website, this.company});

  factory ModelUser.fromJson(Map<String,dynamic> data) => _$ModelUserFromJson(data);
  Map<String,dynamic> toJson() => _$ModelUserToJson(this);
}