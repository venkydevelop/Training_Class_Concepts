// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      name: json['name'] as String?,
      imagePath: json['imagePath'] as String?,
      course: json['course'] as String?,
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imagePath': instance.imagePath,
      'course': instance.course,
    };

_$UserDataModelImpl _$$UserDataModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDataModelImpl(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UserDataModelImplToJson(_$UserDataModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
    };
