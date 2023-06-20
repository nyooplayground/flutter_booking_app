import 'package:bloc/bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next() {
    if (state.currentPage < state.onboardingList.length - 1) {
      emit(
        state.clone()..currentPage = state.currentPage + 1
      );
    }
  }

  void previous() {
    if (state.currentPage > 0) {
      emit(
        state.clone()..currentPage = state.currentPage - 1
      );
    }
  }

  void goto(int index) {
    if (index >= 0 && index < state.onboardingList.length) {
      emit(
        state.clone()..currentPage = index
      );
    }
  }

  void skip() {
    //TODO: implement skip journey
  }
}
