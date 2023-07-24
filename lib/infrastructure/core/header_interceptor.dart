import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/managers/preferences_manager.dart';

class HeaderInterceptor extends InterceptorsWrapper {
  static const String _AUTH_HEADER = "Authorization";
  static const String _CONTENT_TYPE = "ContentType";
  static const String _PLATFORM = "platform";
  static const String _BEARER = "Bearer ";

  late PreferencesManager _preferences;

  HeaderInterceptor(PreferencesManager preferences) {
    this._preferences = preferences;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = {
      _AUTH_HEADER: _BEARER + _preferences.getUserToken(),
      _CONTENT_TYPE: "application/json",
      _PLATFORM: Platform.isIOS ? "iOS" : "android"
    };
    handler.next(options);
  }
}

final headerInterceptorProvider = Provider(
  (ref) => HeaderInterceptor(
    ref.read(preferencesManagerProvider),
  ),
);
