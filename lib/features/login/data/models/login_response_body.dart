import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  int errorCode;
  String errorMessage;
  LoginData data;

  LoginResponseBody({
    required this.errorCode,
    required this.errorMessage,
    required this.data,
  });

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}

@JsonSerializable()
class LoginData {
  String message;

  LoginData({required this.message});
  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
