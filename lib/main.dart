import 'package:booking_app/presentation/pages/welcome/login/login_view.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/welcome_done_view.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Booking App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: 'Poppins',
          ),
          home: const WelcomeDonePage(),
        );
      }
    );
  }
}
