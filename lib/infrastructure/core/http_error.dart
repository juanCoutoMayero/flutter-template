import 'package:dio/dio.dart';

class HttpError {
  static const int UNAUTHORIZED = 401;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int REQUEST_TIMEOUT = 408;
  static const int INTERNAL_SERVER_ERROR = 500;
  static const int BAD_GATEWAY = 502;
  static const int SERVICE_UNAVAILABLE = 503;
  static const int GATEWAY_TIMEOUT = 504;

  ///unknown mistake
  static const String UNKNOWN = "UNKNOWN";

  ///Parsing error
  static const String PARSE_ERROR = "PARSE_ERROR";

  ///Network Error
  static const String NETWORK_ERROR = "NETWORK_ERROR";

  ///Protocol error
  static const String HTTP_ERROR = "HTTP_ERROR";

  ///Certificate error
  static const String SSL_ERROR = "SSL_ERROR";

  ///Connection timed out
  static const String CONNECT_TIMEOUT = "CONNECT_TIMEOUT";

  ///Response timeout
  static const String RECEIVE_TIMEOUT = "RECEIVE_TIMEOUT";

  ///Send timeout
  static const String SEND_TIMEOUT = "SEND_TIMEOUT";

  ///Network request cancellation
  static const String CANCEL = "CANCEL";

  late String code;

  String? message;

  HttpError({required this.code, this.message});

  HttpError.dioError(DioError error) {
    message = error.message;
    switch (error.type) {
      case DioErrorType.connectTimeout:
        code = CONNECT_TIMEOUT;
        message =
            "Network connection timed out, please check network settings!";
        break;
      case DioErrorType.receiveTimeout:
        code = RECEIVE_TIMEOUT;
        message = "The server is abnormal, please try again later!";
        break;
      case DioErrorType.sendTimeout:
        code = SEND_TIMEOUT;
        message =
            "Network connection timed out, please check network settings!";
        break;
      case DioErrorType.response:
        code = HTTP_ERROR;
        message = "The server is abnormal, please try again later!";
        break;
      case DioErrorType.cancel:
        code = CANCEL;
        message = "The request has been cancelled, please request again!";
        break;
      case DioErrorType.other:
        code = UNKNOWN;
        message = "The network or server is abnormal, please try again later!";
        break;
    }
  }

  @override
  String toString() {
    return 'HttpError{code:$code , message:$message}';
  }
}
