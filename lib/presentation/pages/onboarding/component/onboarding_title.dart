import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_state.dart';
import 'package:booking_app/utils/extension/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              cubit.state.onboardingList[cubit.state.currentPage].title ?? '',
              style: AppFonts.heading3,
              textAlign: TextAlign.center,
            ),
            8.0.height,
            Text(
              cubit.state.onboardingList[cubit.state.currentPage].description ??
                  '',
              style: AppFonts.paragraphMedium,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
