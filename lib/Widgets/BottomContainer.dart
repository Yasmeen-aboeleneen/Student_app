import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Core/Constants/Constants.dart';
import 'package:student_app/Core/Widgets/Buttons.dart';

late bool _passwordVisible;

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  final _formKey = GlobalKey<FormState>();
  @override

  //change current state
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      decoration: const BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: kPrimaryColor,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                          color: kTextBlackColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: kPrimaryColor),
                            borderRadius: BorderRadius.circular(50)),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: kErrorBorderColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kTextLightColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Email or phone number",
                        hintStyle: TextStyle(
                          height: 1,
                          color: kPrimaryColor,
                          fontSize: 15.sp,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        isDense: true,
                      ),
                      validator: (value) {
                        RegExp regExp = RegExp(emailPattern);
                        if (value == null || value.isEmpty) {
                          return "please enter email or phone number";
                        } else if (regExp.hasMatch(value)) {
                          return "Please enter vailed email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    TextFormField(
                      obscureText: _passwordVisible,
                      cursorColor: kPrimaryColor,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                          color: kTextBlackColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: kPrimaryColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: kPrimaryColor),
                              borderRadius: BorderRadius.circular(50)),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: kErrorBorderColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: kTextLightColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            height: 1,
                            color: kPrimaryColor,
                            fontSize: 15.sp,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          isDense: true,
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              icon: Icon(
                                  color: kPrimaryColor,
                                  _passwordVisible
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_off_outlined))),
                      validator: (value) {
                        if (value!.length < 8) {
                          return "please enter at least 8 characters  ";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Forgot password? ",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w100,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const LoginButton(),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Don't have an account? sign in ",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w100,
                        color: kPrimaryColor,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
