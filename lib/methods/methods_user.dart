import 'dart:math';

import 'package:flutter/foundation.dart';

import '../api/rest.dart';
import '../constants.dart';
import '../models/model_photo.dart';
import '../models/model_response.dart';
import '../models/model_user.dart';

class MethodsUser {
  static Future<ModelUser> getUser(int userId) async {
    final response = await Rest.getRequest(url: Constants.profileUrl + userId.toString());
    if (response.data == null) return ModelUser(id: userId);
    if (response.status == Status.error) {
      // TODO Отобразить сообщение об ошибке
      debugPrint(response.message ?? 'unknown error');
      return ModelUser(id: userId);
    }
    // TODO Отобразить сообщение об ошибке
    return ModelUser.fromJson(response.data);
  }

  static Future<List<ModelPhoto>> getPhoto(int count) async {
    final response = await Rest.getRequest(url: Constants.photoUrl);
    if (response.data == null) return [];
    if (response.status == Status.error) {
      // TODO Отобразить сообщение об ошибке
      debugPrint(response.message ?? 'unknown error');
      return [];
    }
    final list = (response.data as List<dynamic>?)?.map((e) => ModelPhoto.fromJson(e as Map<String, dynamic>)).toList();
    if (list == null) return [];
    return list.sublist(0, min(count, list.length));
  }
}