import 'package:flutter/foundation.dart';

import '../api/rest.dart';
import '../constants.dart';
import '../models/model_post.dart';
import '../models/model_response.dart';

class MethodsPost {
  static Future<List<ModelPost>> getPosts() async {
    final response = await Rest.getRequest(url: Constants.postUrl);
    if (response.data == null) return [];
    if (response.status == Status.error) {
      // TODO Отобразить сообщение об ошибке
      debugPrint(response.message ?? 'unknown error');
      return [];
    }
    final list = (response.data as List<dynamic>?)?.map((e) => ModelPost.fromJson(e as Map<String, dynamic>)).toList();
    return list ?? [];
  }
}