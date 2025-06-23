import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

@freezed
abstract class PaginationDto with _$PaginationDto {
  const factory PaginationDto({
    required int page,
    required int pageSize,
    required int pageCount,
    required int total,
  }) = _PaginationDto;

  factory PaginationDto.fromJson(Map<String, dynamic> json) =>
      _$PaginationDtoFromJson(json);
}
