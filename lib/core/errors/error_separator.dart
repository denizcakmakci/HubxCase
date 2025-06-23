import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx_case_study/core/errors/default_error.dart';
import 'package:hubx_case_study/core/errors/defaults_error_factory.dart';
import 'package:hubx_case_study/core/errors/network_error_utils.dart';

part 'error_separator.freezed.dart';

@Freezed()
abstract class ErrorSeparatorArgument with _$ErrorSeparatorArgument {
  const factory ErrorSeparatorArgument({
    @Default(false) bool isPlant,
  }) = _ErrorSeparatorArgument;
}

class ErrorSeparator {
  ErrorSeparator(this.errorFactory);
  final DefaultErrorFactory errorFactory;

  DefaultError createError(
    Object exception,
    StackTrace stackTrace,
    String reason, {
    ErrorSeparatorArgument? arg,
  }) {
    try {
      if (exception is DioException) {
        if (arg?.isPlant ?? false) {
          return errorFactory.createApiError(
            exception,
            stackTrace,
            1,
            NetworkErrorUtil.handleHomeError(exception),
            reason,
          );
        }

        return errorFactory.createApiError(
          exception,
          stackTrace,
          1,
          NetworkErrorUtil.handleHomeError(exception),
          reason,
        );
      }

      return errorFactory.createBusinessError(2, exception, stackTrace, reason);
    } on Exception catch (e, stackTrace) {
      return errorFactory.createUnknownError(e.toString(), stackTrace);
    }
  }
}
