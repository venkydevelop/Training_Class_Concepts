// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInRequestImpl _$$SignInRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignInRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignInRequestImplToJson(_$SignInRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$SignUpRequestImpl _$$SignUpRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignUpRequestImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignUpRequestImplToJson(_$SignUpRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
