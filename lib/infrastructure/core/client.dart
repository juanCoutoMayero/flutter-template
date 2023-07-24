import 'package:base_project_with_cubit/infrastructure/core/http_error.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'base_entity.dart';
import 'header_interceptor.dart';

const _BASE_URL = "https://jsonplaceholder.typicode.com/";

class Client {
  static const int _CONNECT_TIMEOUT = 10000;
  static const int _RECEIVE_TIMEOUT = 10000;

  late Dio dio;

  Client(HeaderInterceptor headerInterceptor) {
    final options = BaseOptions(
      baseUrl: _BASE_URL,
      connectTimeout: _CONNECT_TIMEOUT,
      receiveTimeout: _RECEIVE_TIMEOUT,
    );
    this.dio = Dio(options);
    this.dio.interceptors
      ..add(headerInterceptor)
      ..add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
  }

}

final apiClientProvider = Provider(
  (ref) => Client(ref.read(headerInterceptorProvider)),
);
