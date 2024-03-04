import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Core/Constants/Constants.dart';
import 'package:student_app/Widgets/BottomContainer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 45.h,
                  // color: kOtherColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Assets/Images/splash.png',
                        height: 20.h,
                        width: 150.w,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Hi ',
                              style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.normal,
                                  color: kTextWhiteColor)),
                          Text(
                            'Student',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 2),
                          ),
                        ],
                      ),
                      SizedBox(height: .5.h),
                      Text(
                        'Log in to continue',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w100,
                            color: kTextWhiteColor),
                      )
                    ],
                  ),
                ),
                const BottomContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
