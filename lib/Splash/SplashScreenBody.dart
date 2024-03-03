import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Core/Constants/Constants.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'School ',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextWhiteColor,
                      fontSize: 45.sp,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2),
                ),
                Text('Brain ',
                    style: GoogleFonts.pattaya(
                      color: kTextWhiteColor,
                      fontSize: 40.sp,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                    ))
              ],
            ),
            Image.asset(
              'Assets/Images/splash.png',
              height: 45.h,
              width: 45.w,
            )
          ],
        ),
      ),
    );
  }
}
