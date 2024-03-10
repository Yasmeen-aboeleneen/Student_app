import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Core/Constants/Constants.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});
  static String routeName = 'HomeScreenBody';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40.h,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hi,',
                                  style: TextStyle(
                                      fontSize: 23.sp,
                                      fontWeight: FontWeight.w100,
                                      color: kTextWhiteColor),
                                ),
                                Text(
                                  'Yousef',
                                  style: TextStyle(
                                      fontSize: 23.sp,
                                      fontWeight: FontWeight.bold,
                                      color: kTextWhiteColor),
                                )
                              ],
                            ),
                            SizedBox(
                              height: .2.h,
                            ),
                            Text(
                              'Class 2-B || Primary ',
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w100,
                                  color: kTextWhiteColor),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Container(
                              height: 27,
                              width: 115,
                              decoration: BoxDecoration(
                                  color: kOtherColor,
                                  borderRadius: BorderRadius.circular(60)),
                              child: Center(
                                child: Text(
                                  '2024-2025 ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kTextBlackColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
                              maxRadius: 60,
                              minRadius: 60,
                              backgroundColor: kSecondaryColor,
                              backgroundImage:
                                  AssetImage('Assets/Images/boy hair.jpeg')),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                                color: kOtherColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Attendance ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kTextBlackColor),
                                ),
                                Text(
                                  '98.9% ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kTextBlackColor),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                              color: kOtherColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Fees Due ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kTextBlackColor),
                                ),
                                Text(
                                  "1200 \$ ",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kTextBlackColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Container(
                  width: double.infinity,
                  height: 60.h,
                  decoration: const BoxDecoration(
                      color: kOtherColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
