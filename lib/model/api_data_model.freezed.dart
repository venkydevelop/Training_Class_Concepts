// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleObjectResponse _$SingleObjectResponseFromJson(Map<String, dynamic> json) {
  return _SingleObjectResponse.fromJson(json);
}

/// @nodoc
mixin _$SingleObjectResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  SingleDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleObjectResponseCopyWith<SingleObjectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleObjectResponseCopyWith<$Res> {
  factory $SingleObjectResponseCopyWith(SingleObjectResponse value,
          $Res Function(SingleObjectResponse) then) =
      _$SingleObjectResponseCopyWithImpl<$Res, SingleObjectResponse>;
  @useResult
  $Res call({String? id, String? name, SingleDataModel? data});

  $SingleDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SingleObjectResponseCopyWithImpl<$Res,
        $Val extends SingleObjectResponse>
    implements $SingleObjectResponseCopyWith<$Res> {
  _$SingleObjectResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SingleDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SingleDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SingleDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleObjectResponseImplCopyWith<$Res>
    implements $SingleObjectResponseCopyWith<$Res> {
  factory _$$SingleObjectResponseImplCopyWith(_$SingleObjectResponseImpl value,
          $Res Function(_$SingleObjectResponseImpl) then) =
      __$$SingleObjectResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, SingleDataModel? data});

  @override
  $SingleDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SingleObjectResponseImplCopyWithImpl<$Res>
    extends _$SingleObjectResponseCopyWithImpl<$Res, _$SingleObjectResponseImpl>
    implements _$$SingleObjectResponseImplCopyWith<$Res> {
  __$$SingleObjectResponseImplCopyWithImpl(_$SingleObjectResponseImpl _value,
      $Res Function(_$SingleObjectResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SingleObjectResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SingleDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleObjectResponseImpl implements _SingleObjectResponse {
  _$SingleObjectResponseImpl({this.id, this.name, this.data});

  factory _$SingleObjectResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleObjectResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final SingleDataModel? data;

  @override
  String toString() {
    return 'SingleObjectResponse(id: $id, name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleObjectResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleObjectResponseImplCopyWith<_$SingleObjectResponseImpl>
      get copyWith =>
          __$$SingleObjectResponseImplCopyWithImpl<_$SingleObjectResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleObjectResponseImplToJson(
      this,
    );
  }
}

abstract class _SingleObjectResponse implements SingleObjectResponse {
  factory _SingleObjectResponse(
      {final String? id,
      final String? name,
      final SingleDataModel? data}) = _$SingleObjectResponseImpl;

  factory _SingleObjectResponse.fromJson(Map<String, dynamic> json) =
      _$SingleObjectResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  SingleDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$SingleObjectResponseImplCopyWith<_$SingleObjectResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SingleDataModel _$SingleDataModelFromJson(Map<String, dynamic> json) {
  return _SingleDataModel.fromJson(json);
}

/// @nodoc
mixin _$SingleDataModel {
  int? get year => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "CPU model")
  String? get cpuModel => throw _privateConstructorUsedError;
  @JsonKey(name: "Hard disk size")
  String? get hardDiskSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleDataModelCopyWith<SingleDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleDataModelCopyWith<$Res> {
  factory $SingleDataModelCopyWith(
          SingleDataModel value, $Res Function(SingleDataModel) then) =
      _$SingleDataModelCopyWithImpl<$Res, SingleDataModel>;
  @useResult
  $Res call(
      {int? year,
      double? price,
      @JsonKey(name: "CPU model") String? cpuModel,
      @JsonKey(name: "Hard disk size") String? hardDiskSize});
}

/// @nodoc
class _$SingleDataModelCopyWithImpl<$Res, $Val extends SingleDataModel>
    implements $SingleDataModelCopyWith<$Res> {
  _$SingleDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? price = freezed,
    Object? cpuModel = freezed,
    Object? hardDiskSize = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      cpuModel: freezed == cpuModel
          ? _value.cpuModel
          : cpuModel // ignore: cast_nullable_to_non_nullable
              as String?,
      hardDiskSize: freezed == hardDiskSize
          ? _value.hardDiskSize
          : hardDiskSize // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleDataModelImplCopyWith<$Res>
    implements $SingleDataModelCopyWith<$Res> {
  factory _$$SingleDataModelImplCopyWith(_$SingleDataModelImpl value,
          $Res Function(_$SingleDataModelImpl) then) =
      __$$SingleDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? year,
      double? price,
      @JsonKey(name: "CPU model") String? cpuModel,
      @JsonKey(name: "Hard disk size") String? hardDiskSize});
}

/// @nodoc
class __$$SingleDataModelImplCopyWithImpl<$Res>
    extends _$SingleDataModelCopyWithImpl<$Res, _$SingleDataModelImpl>
    implements _$$SingleDataModelImplCopyWith<$Res> {
  __$$SingleDataModelImplCopyWithImpl(
      _$SingleDataModelImpl _value, $Res Function(_$SingleDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? price = freezed,
    Object? cpuModel = freezed,
    Object? hardDiskSize = freezed,
  }) {
    return _then(_$SingleDataModelImpl(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      cpuModel: freezed == cpuModel
          ? _value.cpuModel
          : cpuModel // ignore: cast_nullable_to_non_nullable
              as String?,
      hardDiskSize: freezed == hardDiskSize
          ? _value.hardDiskSize
          : hardDiskSize // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleDataModelImpl implements _SingleDataModel {
  _$SingleDataModelImpl(
      {this.year,
      this.price,
      @JsonKey(name: "CPU model") this.cpuModel,
      @JsonKey(name: "Hard disk size") this.hardDiskSize});

  factory _$SingleDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleDataModelImplFromJson(json);

  @override
  final int? year;
  @override
  final double? price;
  @override
  @JsonKey(name: "CPU model")
  final String? cpuModel;
  @override
  @JsonKey(name: "Hard disk size")
  final String? hardDiskSize;

  @override
  String toString() {
    return 'SingleDataModel(year: $year, price: $price, cpuModel: $cpuModel, hardDiskSize: $hardDiskSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleDataModelImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cpuModel, cpuModel) ||
                other.cpuModel == cpuModel) &&
            (identical(other.hardDiskSize, hardDiskSize) ||
                other.hardDiskSize == hardDiskSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, price, cpuModel, hardDiskSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleDataModelImplCopyWith<_$SingleDataModelImpl> get copyWith =>
      __$$SingleDataModelImplCopyWithImpl<_$SingleDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleDataModelImplToJson(
      this,
    );
  }
}

abstract class _SingleDataModel implements SingleDataModel {
  factory _SingleDataModel(
          {final int? year,
          final double? price,
          @JsonKey(name: "CPU model") final String? cpuModel,
          @JsonKey(name: "Hard disk size") final String? hardDiskSize}) =
      _$SingleDataModelImpl;

  factory _SingleDataModel.fromJson(Map<String, dynamic> json) =
      _$SingleDataModelImpl.fromJson;

  @override
  int? get year;
  @override
  double? get price;
  @override
  @JsonKey(name: "CPU model")
  String? get cpuModel;
  @override
  @JsonKey(name: "Hard disk size")
  String? get hardDiskSize;
  @override
  @JsonKey(ignore: true)
  _$$SingleDataModelImplCopyWith<_$SingleDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ObjectListModel _$ObjectListModelFromJson(Map<String, dynamic> json) {
  return _ObjectListModel.fromJson(json);
}

/// @nodoc
mixin _$ObjectListModel {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int? get totalPages => throw _privateConstructorUsedError;
  List<ListDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObjectListModelCopyWith<ObjectListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectListModelCopyWith<$Res> {
  factory $ObjectListModelCopyWith(
          ObjectListModel value, $Res Function(ObjectListModel) then) =
      _$ObjectListModelCopyWithImpl<$Res, ObjectListModel>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: "per_page") int? perPage,
      int? total,
      @JsonKey(name: "total_pages") int? totalPages,
      List<ListDataModel>? data});
}

/// @nodoc
class _$ObjectListModelCopyWithImpl<$Res, $Val extends ObjectListModel>
    implements $ObjectListModelCopyWith<$Res> {
  _$ObjectListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ListDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ObjectListModelImplCopyWith<$Res>
    implements $ObjectListModelCopyWith<$Res> {
  factory _$$ObjectListModelImplCopyWith(_$ObjectListModelImpl value,
          $Res Function(_$ObjectListModelImpl) then) =
      __$$ObjectListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: "per_page") int? perPage,
      int? total,
      @JsonKey(name: "total_pages") int? totalPages,
      List<ListDataModel>? data});
}

/// @nodoc
class __$$ObjectListModelImplCopyWithImpl<$Res>
    extends _$ObjectListModelCopyWithImpl<$Res, _$ObjectListModelImpl>
    implements _$$ObjectListModelImplCopyWith<$Res> {
  __$$ObjectListModelImplCopyWithImpl(
      _$ObjectListModelImpl _value, $Res Function(_$ObjectListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ObjectListModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ListDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObjectListModelImpl implements _ObjectListModel {
  _$ObjectListModelImpl(
      {this.page,
      @JsonKey(name: "per_page") this.perPage,
      this.total,
      @JsonKey(name: "total_pages") this.totalPages,
      final List<ListDataModel>? data})
      : _data = data;

  factory _$ObjectListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObjectListModelImplFromJson(json);

  @override
  final int? page;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  final int? total;
  @override
  @JsonKey(name: "total_pages")
  final int? totalPages;
  final List<ListDataModel>? _data;
  @override
  List<ListDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ObjectListModel(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectListModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectListModelImplCopyWith<_$ObjectListModelImpl> get copyWith =>
      __$$ObjectListModelImplCopyWithImpl<_$ObjectListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObjectListModelImplToJson(
      this,
    );
  }
}

abstract class _ObjectListModel implements ObjectListModel {
  factory _ObjectListModel(
      {final int? page,
      @JsonKey(name: "per_page") final int? perPage,
      final int? total,
      @JsonKey(name: "total_pages") final int? totalPages,
      final List<ListDataModel>? data}) = _$ObjectListModelImpl;

  factory _ObjectListModel.fromJson(Map<String, dynamic> json) =
      _$ObjectListModelImpl.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  int? get total;
  @override
  @JsonKey(name: "total_pages")
  int? get totalPages;
  @override
  List<ListDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ObjectListModelImplCopyWith<_$ObjectListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListDataModel _$ListDataModelFromJson(Map<String, dynamic> json) {
  return _ListDataModel.fromJson(json);
}

/// @nodoc
mixin _$ListDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDataModelCopyWith<ListDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataModelCopyWith<$Res> {
  factory $ListDataModelCopyWith(
          ListDataModel value, $Res Function(ListDataModel) then) =
      _$ListDataModelCopyWithImpl<$Res, ListDataModel>;
  @useResult
  $Res call(
      {int? id,
      String? email,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      String? avatar});
}

/// @nodoc
class _$ListDataModelCopyWithImpl<$Res, $Val extends ListDataModel>
    implements $ListDataModelCopyWith<$Res> {
  _$ListDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListDataModelImplCopyWith<$Res>
    implements $ListDataModelCopyWith<$Res> {
  factory _$$ListDataModelImplCopyWith(
          _$ListDataModelImpl value, $Res Function(_$ListDataModelImpl) then) =
      __$$ListDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      String? avatar});
}

/// @nodoc
class __$$ListDataModelImplCopyWithImpl<$Res>
    extends _$ListDataModelCopyWithImpl<$Res, _$ListDataModelImpl>
    implements _$$ListDataModelImplCopyWith<$Res> {
  __$$ListDataModelImplCopyWithImpl(
      _$ListDataModelImpl _value, $Res Function(_$ListDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$ListDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListDataModelImpl implements _ListDataModel {
  _$ListDataModelImpl(
      {this.id,
      this.email,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      this.avatar});

  factory _$ListDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDataModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'ListDataModel(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, firstName, lastName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDataModelImplCopyWith<_$ListDataModelImpl> get copyWith =>
      __$$ListDataModelImplCopyWithImpl<_$ListDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDataModelImplToJson(
      this,
    );
  }
}

abstract class _ListDataModel implements ListDataModel {
  factory _ListDataModel(
      {final int? id,
      final String? email,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      final String? avatar}) = _$ListDataModelImpl;

  factory _ListDataModel.fromJson(Map<String, dynamic> json) =
      _$ListDataModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$ListDataModelImplCopyWith<_$ListDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
