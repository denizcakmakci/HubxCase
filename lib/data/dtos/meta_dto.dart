import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx_case_study/data/dtos/pagination_dto.dart';

part 'meta_dto.freezed.dart';
part 'meta_dto.g.dart';

@freezed
abstract class MetaDto with _$MetaDto {
  const factory MetaDto({
    required PaginationDto? pagination,
  }) = _MetaDto;

  factory MetaDto.fromJson(Map<String, dynamic> json) =>
      _$MetaDtoFromJson(json);
}
