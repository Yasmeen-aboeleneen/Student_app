import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Core/Constants/Constants.dart';
import 'package:student_app/Screens/ProfileScreen.dart';
import 'package:student_app/Widgets/ItemsOfListView.dart';
import 'package:student_app/Widgets/StudentData.dart';

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
                        const StudentData(
                          studentName: 'Yousef',
                          classlevel: 'Class 2-B || Primary ',
                          stuYear: '2024-2025',
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(ProfileScreen());
                          },
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
                                      fontSize: 18.sp,
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
                                      fontSize: 18.sp,
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
                  child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: ItemesOfListView()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
