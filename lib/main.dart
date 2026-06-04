import 'package:course_app/home_page.dart';
import 'package:course_app/login_view.dart';
import 'package:course_app/register_view.dart';
import 'package:course_app/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
