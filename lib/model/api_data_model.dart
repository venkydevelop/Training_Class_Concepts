import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_data_model.freezed.dart';
part 'api_data_model.g.dart';

@Freezed()
class SingleObjectResponse with _$SingleObjectResponse {
  factory SingleObjectResponse(
      {String? id,
      String? name,
      SingleDataModel? data}) = _SingleObjectResponse;

  factory SingleObjectResponse.fromJson(Map<String, Object?> json) =>
      _$SingleObjectResponseFromJson(json);
}

@Freezed()
class SingleDataModel with _$SingleDataModel {
  factory SingleDataModel(
          {int? year,
          double? price,
          @JsonKey(name: "CPU model") String? cpuModel,
          @JsonKey(name: "Hard disk size") String? hardDiskSize}) =
      _SingleDataModel;

  factory SingleDataModel.fromJson(Map<String, Object?> json) =>
      _$SingleDataModelFromJson(json);
}

@Freezed()
class ObjectListModel with _$ObjectListModel {
  factory ObjectListModel(
      {int? page,
      @JsonKey(name: "per_page") int? perPage,
      int? total,
      @JsonKey(name: "total_pages") int? totalPages,
      List<ListDataModel>? data}) = _ObjectListModel;

  factory ObjectListModel.fromJson(Map<String, Object?> json) =>
      _$ObjectListModelFromJson(json);
}

@Freezed()
class ListDataModel with _$ListDataModel {
  factory ListDataModel({
    int? id,
    String? email,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    String? avatar,
  }) = _ListDataModel;

  factory ListDataModel.fromJson(Map<String, Object?> json) =>
      _$ListDataModelFromJson(json);
}
