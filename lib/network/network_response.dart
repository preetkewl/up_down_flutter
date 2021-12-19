abstract class ResponseObject {
  fromJson(Map<String, dynamic> json);
}

class NetworkResponse<T extends ResponseObject> {
  late int httpStatusCode;
  late String message;
  final T responseObject;

  bool get httpSuccess => httpStatusCode == 200 || httpStatusCode == 201;

  NetworkResponse({required this.responseObject}) {
    httpStatusCode = -1;
  }
}
