import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HttpService {
  Future<Response> postDataWithOutHeader(
      {required String url, required Map requestBody}) async {
    try {
      final response =
          await Dio().post(url, data: {"user_id": 33, "doctor_id": 3});
      return response;
    } on DioError catch (err) {
      if (kDebugMode) {
        print(err);
      }
      rethrow;
    }
  }
}
