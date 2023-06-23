import 'package:booking_app/config/theme/app_dimensions.dart';
import 'package:booking_app/data/src/img_string.dart';
import 'package:flutter/cupertino.dart';

class WelcomeDoneImage extends StatelessWidget {
  const WelcomeDoneImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.w16),
        child: Image.asset(ImgString.backdrop),
      )
    );
  }
}
