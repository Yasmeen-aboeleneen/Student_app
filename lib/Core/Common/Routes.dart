import 'package:flutter/material.dart';
import 'package:student_app/Login&signin/LoginScreen.dart';
import 'package:student_app/Splash/SplashScreenBody.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreenBody.routeName: (context) => const SplashScreenBody(),
  LoginScreen.routeName: (context) => const LoginScreen(),
};
