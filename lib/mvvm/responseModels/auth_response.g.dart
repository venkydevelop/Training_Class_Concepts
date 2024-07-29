// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResponseImpl _$$SignUpResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignUpResponseImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SignUpModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpResponseImplToJson(
        _$SignUpResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$SignUpModelImpl _$$SignUpModelImplFromJson(Map<String, dynamic> json) =>
    _$SignUpModelImpl(
      id: json['_id'] as String?,
      token: json['token'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$SignUpModelImplToJson(_$SignUpModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'token': instance.token,
      'name': instance.name,
      'email': instance.email,
    };
