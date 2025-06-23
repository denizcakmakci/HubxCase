import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_from_map.freezed.dart';
part 'result_from_map.g.dart';

@Freezed(genericArgumentFactories: true)
class ResultFromMap<T> with _$ResultFromMap<T> {
  const factory ResultFromMap({required T data, required Object error}) =
      _ResultFromMap<T>;

  factory ResultFromMap.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ResultFromMapFromJson(json, fromJsonT);
}
