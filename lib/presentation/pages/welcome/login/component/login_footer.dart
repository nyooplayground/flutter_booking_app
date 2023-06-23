import 'package:booking_app/config/config.dart';
import 'package:booking_app/utils/extension/extension.dart';
import 'package:flutter/cupertino.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Forgot password ',
                style: AppFonts.paragraphSmall.copyWith(
                  color: AppColors.ink02
                )
              ),
              TextSpan(
                text: 'Get new',
                style: AppFonts.paragraphSmallBold,
              )
            ]
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
              children: [
                TextSpan(
                    text: 'Do you have an account? ',
                    style: AppFonts.paragraphSmall.copyWith(
                        color: AppColors.ink02
                    )
                ),
                TextSpan(
                  text: 'Create new',
                  style: AppFonts.paragraphSmallBold,
                )
              ]
          ),
        ),
      ],
    );
  }
}
