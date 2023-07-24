import 'package:connectivity/connectivity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoadingProvider extends StateNotifier<bool> {
  LoadingProvider() : super(false);

  void showLoading() {
    this.state = true;
  }

  void hideLoading() {
    this.state = false;
  }
}

class ErrorProvider extends StateNotifier<String?> {
  ErrorProvider() : super(null);

  void showError(String error) {
    this.state = error;
  }

  void hideLoading() {
    this.state = null;
  }
}

class ConnectProvider extends StateNotifier<bool> {
  ConnectProvider() : super(true) {
    _init();
  }

  void _init() {
    Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) {
        if (result == ConnectivityResult.none) {
          state = false;
        } else {
          state = true;
        }
      },
    );
  }
}

final loadingProvider = StateNotifierProvider<LoadingProvider, bool>(
  (ref) => LoadingProvider(),
);

final errorProvider = StateNotifierProvider<ErrorProvider, String?>(
  (ref) => ErrorProvider(),
);

final connectProvider = StateNotifierProvider<ConnectProvider, bool>(
      (_) => ConnectProvider(),
);
