import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@Freezed()
class SignInRequest with _$SignInRequest {
  factory SignInRequest({
    required String email,
    required String password,
  }) = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}

@Freezed()
class SignUpRequest with _$SignUpRequest {
  factory SignUpRequest({
    required String name,
    required String email,
    required String password,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}
