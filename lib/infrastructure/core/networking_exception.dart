class NetworkException implements Exception {
  final message;
  final _prefix;
  final int? _code;

  NetworkException([this.message, this._prefix, this._code]);

  String toString() {
    return "$_prefix$message";
  }
}

class FetchDataException extends NetworkException {
  FetchDataException([String? message, int? code])
      : super(message, "Error During Communication: ", code);
}

class BadRequestException extends NetworkException {
  BadRequestException([message, code])
      : super(message, "Invalid Request: ", code);
}

class UnauthorisedException extends NetworkException {
  UnauthorisedException([message, code])
      : super(message, "Unauthorised: ", code);
}

class InvalidInputException extends NetworkException {
  InvalidInputException([String? message, code])
      : super(message, "Invalid Input: ", code);
}

class NoInternetConnection extends NetworkException {
  NoInternetConnection([String? message, code])
      : super(message, "No internet connection", code);
}
