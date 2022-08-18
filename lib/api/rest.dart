import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../models/model_response.dart';

class Rest {
  static String get _token => '123';

  static Future<ModelResponse> getRequest({required String url}) async {
    try {
      final response = await Dio().get(url,
        options: Options(
          responseType: ResponseType.json,
        ),
      );
      if (response.data == null) {
        return ModelResponse(status: Status.error, message: 'Server return null data!');
      }
      if (response.statusCode != 200) {
        return ModelResponse(status: Status.error, message: 'Server return status code: ${response.statusCode}!');
      }
      return ModelResponse(status: Status.success, data: response.data);
    } on DioError catch (e) {
      if (e.response != null) {
        debugPrint('Dio error!');
        debugPrint('STATUS: ${e.response?.statusCode}');
        debugPrint('DATA: ${e.response?.data}');
        debugPrint('HEADERS: ${e.response?.headers}');
      }
      return ModelResponse(status: Status.error, message: e.message);
    }
  }

  static Future<ModelResponse> postRequest({required String url, Map<String, dynamic>? parameters}) async {
    try {
      final response = await Dio().post(url,
          queryParameters: parameters,
          options: Options(
            responseType: ResponseType.json,
            contentType: 'application/json',
            headers: {
              'Authorization': 'Bearer $_token',
            },
          ),
      );
      if (response.data == null) {
        return ModelResponse(status: Status.error, message: 'Server return null data!');
      }
      if (response.statusCode != 200) {
        return ModelResponse(status: Status.error, message: 'Server return status code: ${response.statusCode}!');
      }
      return ModelResponse(status: Status.success, data: response.data);
    } on DioError catch (e) {
      if (e.response != null) {
        debugPrint('Dio error!');
        debugPrint('STATUS: ${e.response?.statusCode}');
        debugPrint('DATA: ${e.response?.data}');
        debugPrint('HEADERS: ${e.response?.headers}');
      }
      return ModelResponse(status: Status.error, message: e.message);
    }
  }
}