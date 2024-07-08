import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@Freezed()
class DataModel with _$DataModel {
  factory DataModel({String? name, String? imagePath, String? course}) =
      _DataModel;

  factory DataModel.fromJson(Map<String, Object?> json) =>
      _$DataModelFromJson(json);
}
