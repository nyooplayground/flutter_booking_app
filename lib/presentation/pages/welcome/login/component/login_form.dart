import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimensions.dart';
import 'package:booking_app/presentation/widget/widget.dart';
import 'package:booking_app/utils/extension/extension.dart';
import 'package:flutter/cupertino.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: AppFonts.heading3,
          ),
          16.0.height,
          const AppInputText(label: 'Email'),
          16.0.height,
          const AppInputText(label: 'Password'),
          16.0.height,
          PrimaryButton(
            onPressed: (){},
            text: 'Login',
            width: double.infinity,
            type: PrimaryButtonType.type3,
          ),
        ],
      ),
    );
  }
}
