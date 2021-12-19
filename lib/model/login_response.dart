import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

class LoginResponse {
  LoginResponse({
    this.message,
    this.success,
    this.authToken,
    this.data,
  });

  String? message;
  bool? success;
  String? authToken;
  Data? data;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    message: json["message"],
    success: json["success"],
    authToken: json["auth_token"],
    data: Data.fromJson(json["data"]),
  );

}

class Data {
  Data({
    this.id,
    this.firstName,
    this.lastName,
    this.loginType,
    this.email,
    this.uniqueId,
    this.city,
    this.country,
    this.birthDate,
    this.image,
    this.isActive,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? loginType;
  String? email;
  String? uniqueId;
  String? city;
  String? country;
  DateTime? birthDate;
  String? image;
  int? isActive;
  int? isDeleted;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    loginType: json["login_type"],
    email: json["email"],
    uniqueId: json["unique_id"],
    city: json["city"],
    country: json["country"],
    birthDate: DateTime.parse(json["birth_date"]),
    image: json["image"],
    isActive: json["is_active"],
    isDeleted: json["is_deleted"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

}
