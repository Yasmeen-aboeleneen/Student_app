import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../Core/Constants/Constants.dart';

class HomeScreenItems extends StatelessWidget {
  const HomeScreenItems(
      {super.key,
      required this.onpress,
      required this.icon,
      required this.text});
  final VoidCallback onpress;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        width: 40.w,
        height: 15.h,
        decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            )),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            SvgPicture.asset(
              icon,
              height: 7.h,
              width: 8.w,
              color: kOtherColor,
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              maxLines: 2,
              textAlign: TextAlign.center,
              text,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  color: kTextWhiteColor),
            )
          ]),
        ),
      ),
    );
  }
}
