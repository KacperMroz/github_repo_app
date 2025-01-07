import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      final response = await _dio.get<T>(path,
          queryParameters: queryParameters, options: options);
      return response;
    } catch (e) {
      debugPrint('Błąd podczas żądania GET $path: $e');
      if (e is DioException) {
        debugPrint('DioError type: ${e.type}');
        debugPrint('DioError message: ${e.message}');
        debugPrint('DioError response: ${e.response}');
      }
      rethrow;
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Options? options,
    query,
  }) {
    return _dio.post<T>(
      path,
      data: data,
      options: options,
      queryParameters: query,
    );
  }

  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Options? options,
    Dio? dio,
  }) {
    return dio!.put<T>(path, data: data, options: options);
  }

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Options? options,
  }) {
    return _dio.delete<T>(path, data: data, options: options);
  }
}
