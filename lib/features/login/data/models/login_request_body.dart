import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String phoneNumber;

  LoginRequestBody({required this.phoneNumber});

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
