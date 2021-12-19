import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:up_down_flutter/model/login_response.dart';
import '../globals.dart';

class NetworkRequest {
  static var client = http.Client();

  static final _headers = Map<String, String>();

  static Future<LoginResponse?> loginCall({
    required String email,
    required String password,
  }) async {
    _headers['Content-Type'] = "application/json";
    _headers['accept'] = "application/json";

    final Uri url = Uri.parse(baseAddress + 'api/login');
    String body = jsonEncode({'EmailAddress': email, 'password': password});

    var response = await client.post(url, headers: _headers, body: body);

    if (response.statusCode == 200) {
      return loginResponseFromJson(response.body);
    } else {
      return null;
    }

  }

}
