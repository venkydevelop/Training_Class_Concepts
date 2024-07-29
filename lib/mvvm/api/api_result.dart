import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@Freezed()
@immutable
sealed class ApiResult<T> with _$ApiResult {
  factory ApiResult.success(T? data) = _Success<T>;
  factory ApiResult.error(String error) = Error;
  factory ApiResult.loading() = Loading;
  factory ApiResult.init() = Init;
}
