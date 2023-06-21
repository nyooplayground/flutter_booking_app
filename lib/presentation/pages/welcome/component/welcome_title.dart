import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimensions.dart';
import 'package:flutter/cupertino.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimensions.w16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Find the Perfect Roommate",
            style: AppFonts.heading3,
          ),
          Text(
            "We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFonts.paragraphMedium,
          ),
        ],
      ),
    );
  }
}
