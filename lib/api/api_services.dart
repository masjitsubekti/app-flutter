import 'package:dio/dio.dart';
import 'package:belajar_flutter/values/string.dart';
import 'package:flutter/foundation.dart';

class ApiServices {
  Dio? _dio;

  ApiServices(
      {String? token,
      String baseUrl = BASE_URL_API,
      Map<String, dynamic>? headers}) {
    _dio = Dio();
    _dio!
      ..options.baseUrl = baseUrl
      ..options.connectTimeout =
          const Duration(milliseconds: Duration.millisecondsPerMinute)
      ..options.receiveTimeout =
          const Duration(milliseconds: Duration.millisecondsPerMinute)
      ..httpClientAdapter
      ..options.headers = headers != null
          ? headers
          : {
              "Accept": "application/json",
              "Content-Type": "application/x-www-form-urlencoded",
              // 'Authorization': 'Bearer $token',
            };
    if (kDebugMode) {
      _dio!.interceptors.add(LogInterceptor(
        responseBody: true,
        error: true,
        requestHeader: true,
        responseHeader: true,
        request: true,
        requestBody: true,
      ));
    }
  }

  Future fetchDivisi () async {
    try {
      final response = await _dio!.get("master/divisi/all");
      return response.data;
    } catch (e) {
      dioErrorHandler(e);
    }
  }

  void dioErrorHandler(e) {
    if (e is DioError) {
      if (e.type == DioErrorType.values) {
        print("ERROR MSG SERVER : ${e.response!.data}");
        print("ERROR MSG : ${e.response!.statusMessage}");
        print("ERROR : ${e.error}");
        print("CODE : ${e.response!.statusCode}");
        print("MESSAGE : ${e.message}");
        throw (e.response!.statusCode != null);
      } else if (e.type == DioErrorType.unknown) {
        print("ERROR : ${e.message}");
        throw (e.message!);
      } else if (e.type == DioErrorType.connectionTimeout) {
        print("ERROR : ${e.message}");
        throw (e.message!);
      } else {
        throw (e);
      }
    } else {
      throw (e);
    }
  }
}