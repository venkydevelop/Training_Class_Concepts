import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@Freezed()
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    int? status,
    String? message,
    SignUpModel? data,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@Freezed()
class SignUpModel with _$SignUpModel {
  const factory SignUpModel({
    @JsonKey(name: "_id") String? id,
    String? token,
    String? name,
    String? email,
  }) = _SignUpModel;

  factory SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);
}

@Freezed()
class UsersResponse with _$UsersResponse {
  const factory UsersResponse({
    int? status,
    String? message,
    List<SignUpModel>? data,
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);
}
