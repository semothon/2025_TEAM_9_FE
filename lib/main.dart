import 'package:componentss/features/auth/onboarding_screen.dart';
import 'package:componentss/features/main_screen.dart';
import 'package:componentss/features/study/study_make_group_level_screen.dart';
import 'package:componentss/features/study/study_make_group_name_screen.dart';
import 'package:componentss/features/study/study_make_group_screen.dart';
import 'package:componentss/features/study/study_make_group_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(1080, 2400));
    return MaterialApp(
      home: const StudyMakeGroupName(),
      theme: ThemeData(
        fontFamily: "Wanted Sans",
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white),
      ),
    );
  }
}
