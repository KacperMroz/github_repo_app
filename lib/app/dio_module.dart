import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:github_repo_app/app/flavor_config.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioModule {
  @singleton
  Dio dio() => _getDio();

  Dio _getDio() {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: FlavorConfig.instance.variables['API_URL'],
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        headers: {
          Headers.contentTypeHeader: Headers.jsonContentType,
          Headers.acceptHeader: Headers.jsonContentType,
        },
      ),
    );

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final HttpClient client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    _setupInterceptors(dio);
    return dio;
  }

  static void _setupInterceptors(Dio dio) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        responseBody: false,
      ),
    );
  }
}
