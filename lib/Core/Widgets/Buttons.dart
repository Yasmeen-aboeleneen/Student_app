import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../Home/HomeScreenBody.dart';
import '../Constants/Constants.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.w, left: 18.w),
      child: SizedBox(
        height: 7.h,
        child: TextButton(
          onPressed: () {
             Navigator.pushNamedAndRemoveUntil(
                  context, HomeScreenBody.routeName, (route) => false);
            // if (_formKey.currentState.validate()) {
            //   Navigator.pushNamedAndRemoveUntil(
            //       context, HomeScreenBody.routeName, (route) => false);
            // }
          },
          child: Center(
            child: Text(
              'Log in',
              style: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor, shape: const StadiumBorder()),
        ),
      ),
    );
  }
}
