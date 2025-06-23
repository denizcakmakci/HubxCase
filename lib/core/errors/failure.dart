import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@Freezed()
abstract class Failure<T> with _$Failure<T> {
  const factory Failure(T error, {StackTrace? stackTrace}) = _Failure;
  const factory Failure.createError({
    required T error,
    StackTrace? stackTrace,
  }) = FailureCreateError<T>;
}
