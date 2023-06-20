import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Expanded(
      child: PageView.builder(
        itemBuilder: (c, i) => Image.asset(
          cubit.state.onboardingList[i].image ?? '',
        ),
        itemCount: cubit.state.onboardingList.length,
        onPageChanged: cubit.goto,
      ),
    );
  }
}
