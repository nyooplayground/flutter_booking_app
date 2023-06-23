import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/component/welcome_done_button.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/component/welcome_done_image.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/component/welcome_done_title.dart';
import 'package:booking_app/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'welcome_done_cubit.dart';
import 'welcome_done_state.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Welcome_doneCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<Welcome_doneCubit>(context);

    return Scaffold(
      backgroundColor: AppColors.accentGreen,
      body: SafeArea(
        child: Column(
          children: [
            42.0.height,
            const WelcomeDoneImage(),
            24.0.height,
            const WelcomeDoneTitle(),
            24.0.height,
            const WelcomeDoneButton(),
            95.0.height,
          ],
        ),
      ),
    );
  }
}


