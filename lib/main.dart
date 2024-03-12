import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Core/Common/Routes.dart';
import 'package:student_app/Core/Constants/Constants.dart';
import 'package:student_app/Splash/SplashScreenBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'School Brain',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          //use google fonts
          textTheme: GoogleFonts.sourceSans3TextTheme(Theme.of(context)
              .textTheme
              .apply()
              .copyWith(
                  bodyLarge: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold))),
        ),
        initialRoute: SplashScreenBody.routeName,
        routes: routes,
      );
    });
  }
}
