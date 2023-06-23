import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    this.type = SecondaryButtonType.type1,
    required this.onPressed,
    required this.text,
    this.width = 78,
  }) : super(key: key);

  final SecondaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == SecondaryButtonType.type1
      ? _type1()
      : type == SecondaryButtonType.type2
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
          backgroundColor: AppColors.ink06,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          side: const BorderSide(
            width: 1,
            color: AppColors.ink01,
          ),
        ),
        child: Text(
          text,
          style: AppFonts.componentsSmall.copyWith(color: AppColors.ink01),
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
          backgroundColor: AppColors.ink06,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          side: const BorderSide(
            width: 1,
            color: AppColors.ink01,
          ),
        ),
        child: Text(
          text,
          style: AppFonts.componentsMediumBold.copyWith(color: AppColors.ink01),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width.w,
      height: 57.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.ink06,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          side: const BorderSide(
            width: 1,
            color: AppColors.ink01,
          ),
        ),
        child: Text(
          text,
          style: AppFonts.componentsLarge.copyWith(color: AppColors.ink01),
        ),
      ),
    );
  }
}

enum SecondaryButtonType{
  type1,
  type2,
  type3,
}