import 'network_response.dart';

class NetworkBadRequestError extends ResponseObject {
  late String error;
  late int location;
  late String locationAsText;
  late int message;
  late String messageAsText;

  NetworkBadRequestError() {
    error = "";
    location = -1;
    locationAsText = "";
    message = -1;
    messageAsText = "";
  }

  @override
  fromJson(Map<String, dynamic> json) {
    error = json['error'] ?? '';
    location = json['location'] ?? -1;
    locationAsText = json['locationAsText'] ?? '';
    message = json['message'] ?? -1;
    messageAsText = json['messageAsText'] ?? '';
  }
}
