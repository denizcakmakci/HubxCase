import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_bloc.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_state.dart';

class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  OnboardBloc() : super(OnboardState()) {
    on<PagesUpdated>((event, emit) {
      emit(state.copyWith(pages: event.pages));
    });
    on<PageChanged>((event, emit) {
      emit(state.copyWith(currentPage: event.pageIndex));
    });
  }
}
