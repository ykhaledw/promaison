import 'package:dio/dio.dart';
import 'package:promaison/core/networking/api_constants.dart';
import 'package:promaison/features/login/data/models/login_response_body.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/models/login_request_body.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginUrl)
  Future<LoginResponseBody> loginByPhoneNumber(
    @Body() LoginRequestBody loginRequestBody,
  );
}
