import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/presentation/features/paywall/bloc/paywall_event.dart';
import 'package:hubx_case_study/presentation/features/paywall/bloc/paywall_state.dart';

class PaywallBloc extends Bloc<PaywallEvent, PaywallState> {
  PaywallBloc() : super(const PaywallState()) {
    on<LoadSubscriptions>(_onLoadSubscriptions);
    on<SelectPlan>(_onSelectPlan);
  }

  void _onLoadSubscriptions(
    LoadSubscriptions event,
    Emitter<PaywallState> emit,
  ) {
    emit(
      PaywallState(
        features: event.features,
        plans: event.plans,
        selectedPlanId: event.plans.isNotEmpty ? event.plans.last.id : null,
      ),
    );
  }

  void _onSelectPlan(SelectPlan event, Emitter<PaywallState> emit) {
    emit(
      PaywallState(
        features: state.features,
        plans: state.plans,
        selectedPlanId: event.planId,
      ),
    );
  }
}
