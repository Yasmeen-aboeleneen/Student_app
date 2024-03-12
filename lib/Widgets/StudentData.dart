import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Core/Constants/Constants.dart';

class StudentData extends StatelessWidget {
  const StudentData(
      {super.key, required this.studentName, required this.classlevel, required this.stuYear});
  final String studentName;
  final String classlevel;
  final String stuYear;
  @override
  Widget build(BuildContext context) {
    return Column(
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
              studentName,
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
          classlevel,
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
              color: kOtherColor, borderRadius: BorderRadius.circular(60)),
          child: Center(
            child: Text(
              stuYear,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  color: kTextBlackColor),
            ),
          ),
        ),
      ],
    );
  }
}
