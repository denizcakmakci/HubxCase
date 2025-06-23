import 'package:hubx_case_study/core/errors/either.dart';
import 'package:hubx_case_study/core/errors/failure.dart';
import 'package:hubx_case_study/presentation/core/ui_state.dart';

extension EitherExtension<L, R> on Either<L, R> {
  UIState<String, T> callModified<T>({
    T Function(R data)? rightCallback,
    String Function(L error)? leftCallback,
  }) {
    return when(
      left: (left) {
        final errorString =
            leftCallback?.call(left) ?? (left as Failure).error.toString();
        return UIState.error(errorString);
      },
      right: (right) {
        final mapped = rightCallback?.call(right) ?? right as T;
        return UIState.success(mapped);
      },
    );
  }
}
