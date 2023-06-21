import 'package:booking_app/config/theme/app_dimensions.dart';
import 'package:booking_app/presentation/widget/widget.dart';
import 'package:booking_app/utils/extension/extension.dart';
import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              onPressed: () {},
              text: 'Explore',
              type: PrimaryButtonType.type3,
            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: () {},
              text: 'Log In',
              type: SecondaryButtonType.type3,
            ),
          ),
        ],
      ),
    );
  }
}
