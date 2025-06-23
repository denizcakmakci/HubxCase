import 'package:hubx_case_study/core/errors/default_error.dart';

class DefaultErrorFactory implements IErrorFactory {
  @override
  DefaultError createApiError(
    dynamic e,
    StackTrace stackTrace,
    int code,
    String message,
    String defaultMessage,
  ) => DefaultError.apiError(e, stackTrace, code, message, defaultMessage);

  @override
  DefaultError createBusinessError(
    int code,
    dynamic error,
    StackTrace stackTrace,
    String reason,
  ) => DefaultError.businessError(code, error, stackTrace, reason);

  @override
  DefaultError createUnknownError(String error, StackTrace stackTrace) =>
      DefaultError.unknownError(error, stackTrace);
}

abstract class IErrorFactory {
  DefaultError createApiError(
    dynamic error,
    StackTrace stackTrace,
    int code,
    String message,
    String defaultMessage,
  );

  DefaultError createBusinessError(
    int code,
    dynamic error,
    StackTrace stackTrace,
    String reason,
  );

  DefaultError createUnknownError(String error, StackTrace stackTrace);
}
