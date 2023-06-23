import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.type = PrimaryButtonType.type1,
    required this.onPressed,
    required this.text,
    this.width = 78,
  }) : super(key: key);

  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
      ? _type1()
      : type == PrimaryButtonType.type2
        ? _type2()
        : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width.w,
      height: 24.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        child: Text(
          text,
          style: AppFonts.componentsSmall.copyWith(color: AppColors.ink06),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width.w,
      height: 32.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        child: Text(
          text,
          style: AppFonts.componentsMediumBold.copyWith(color: AppColors.ink06),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width.w,
      height: 40.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        child: Text(
          text,
          style: AppFonts.componentsLarge.copyWith(color: AppColors.ink06),
        ),
      ),
    );
  }
}

enum PrimaryButtonType{
  type1,
  type2,
  type3,
}
