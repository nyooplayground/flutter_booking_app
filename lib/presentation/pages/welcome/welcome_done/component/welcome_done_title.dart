import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimensions.dart';
import 'package:booking_app/utils/extension/extension.dart';
import 'package:flutter/cupertino.dart';

class WelcomeDoneTitle extends StatelessWidget {
  const WelcomeDoneTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.w32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Find Your Roomie',
            style: AppFonts.heading4,
          ),
          8.0.height,
          Text(
            'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
            style: AppFonts.paragraphSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
