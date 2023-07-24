class EntityFactory {
  static T? generateObject<T>(Map<String, dynamic>? json) =>
      json != null ? json as T : null;
}

class BaseResponseModel<T> {
  late int code;
  String? message;
  String? serverMessage;
  late T data;

  BaseResponseModel(
      {required this.code,
      this.message,
      this.serverMessage,
      required this.data});

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) =>
      BaseResponseModel(
        code: json["code"],
        message: json["message"],
        data: json["data"] != null
            ? EntityFactory.generateObject(json["data"])
            : null,
      );
}

class BaseListModel<T> {
  int? code;
  String? message;
  List<T>? data;

  BaseListModel({this.code, this.message, this.data});

  factory BaseListModel.fromJson(
      int? code, String? message, List<Map<String, dynamic>> list) {
    final listResult = <T>[];

    list.forEach((element) {
      final object = EntityFactory.generateObject<T>(element);
      if (object != null) {
        listResult.add(object);
      }
    });

    return BaseListModel(code: code, message: message, data: listResult);
  }
}

enum NetMethod { GET, POST, DELETE, PUT }

const NetMethodValues = {
  NetMethod.GET: "get",
  NetMethod.POST: "post",
  NetMethod.DELETE: "delete",
  NetMethod.PUT: "put"
};
