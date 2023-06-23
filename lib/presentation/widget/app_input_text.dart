import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInputText extends StatefulWidget {
  const AppInputText({
    Key? key,
    this.controller,
    required this.label,
  }) : super(key: key);

  final TextEditingController? controller;
  final String label;

  @override
  State<AppInputText> createState() => _AppInputTextState();
}

class _AppInputTextState extends State<AppInputText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.h40,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: AppFonts.componentsMedium,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: AppDimensions.w16),
        ),
      ),
    );
  }
}
