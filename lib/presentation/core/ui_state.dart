import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@freezed
class UIState<L, R> with _$UIState<L, R> {
  const factory UIState.error(L error) = Error<L, R>;
  const factory UIState.idle() = Idle<L, R>;
  const factory UIState.loading() = Loading<L, R>;
  const factory UIState.success(R data) = Success<L, R>;
}
