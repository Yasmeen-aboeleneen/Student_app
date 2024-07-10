import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Core/Constants/Constants.dart';

class TopcontainerProfileScreen extends StatelessWidget {
  const TopcontainerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
              maxRadius: 60,
              minRadius: 60,
              backgroundColor: kSecondaryColor,
              backgroundImage: AssetImage('Assets/Images/boy hair.jpeg')),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yousef Waheed Waked",
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextWhiteColor),
                  ),
                  Text(
                    "Class 2-B || Primary",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                        color: kTextWhiteColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
