import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _KEY_USER_TOKEN = "KEY_USER_TOKEN";

class PreferencesManager {
  SharedPreferences? _sharedPreferences = null;

  PreferencesManager(SharedPreferences sharedPreferences) {
    this._sharedPreferences = sharedPreferences;
  }

  Future saveUserToken(String token) async {
    _sharedPreferences?.setString(_KEY_USER_TOKEN, token);
  }

  String getUserToken() {
    final String? token = _sharedPreferences?.getString(_KEY_USER_TOKEN);
    return token != null ? token : "";
  }
}

final sharedPreferencesProvider = Provider<SharedPreferences>(((ref) =>
        throw UnimplementedError())
    as SharedPreferences Function(ProviderReference));

final preferencesManagerProvider = Provider(
  (ref) => PreferencesManager(ref.read(sharedPreferencesProvider)),
);
