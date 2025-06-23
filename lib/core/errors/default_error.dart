import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_error.freezed.dart';

@Freezed()
abstract class DefaultError with _$DefaultError {
  const factory DefaultError.apiError(
    dynamic error,
    StackTrace stackTrace,
    int code,
    String message,
    String reason,
  ) = _ApiError;

  const factory DefaultError.businessError(
    int code,
    dynamic error,
    StackTrace stackTrace,
    String reason,
  ) = _BusinessError;

  const factory DefaultError.unknownError(
    String message,
    StackTrace stackTrace,
  ) = _UnknownError;
}
