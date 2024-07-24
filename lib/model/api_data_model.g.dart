// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleObjectResponseImpl _$$SingleObjectResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleObjectResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      data: json['data'] == null
          ? null
          : SingleDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingleObjectResponseImplToJson(
        _$SingleObjectResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'data': instance.data,
    };

_$SingleDataModelImpl _$$SingleDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleDataModelImpl(
      year: (json['year'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      cpuModel: json['CPU model'] as String?,
      hardDiskSize: json['Hard disk size'] as String?,
    );

Map<String, dynamic> _$$SingleDataModelImplToJson(
        _$SingleDataModelImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'price': instance.price,
      'CPU model': instance.cpuModel,
      'Hard disk size': instance.hardDiskSize,
    };

_$ObjectListModelImpl _$$ObjectListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ObjectListModelImpl(
      page: (json['page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ListDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ObjectListModelImplToJson(
        _$ObjectListModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.data,
    };

_$ListDataModelImpl _$$ListDataModelImplFromJson(Map<String, dynamic> json) =>
    _$ListDataModelImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$ListDataModelImplToJson(_$ListDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };

_$PostDataResponseImpl _$$PostDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PostDataResponseImpl(
      userId: (json['userId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$PostDataResponseImplToJson(
        _$PostDataResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
