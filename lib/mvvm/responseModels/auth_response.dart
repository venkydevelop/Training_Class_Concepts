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
