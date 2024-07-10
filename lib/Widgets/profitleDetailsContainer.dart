// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:student_app/Core/Constants/Constants.dart';

class Profitledetailscontainer extends StatelessWidget {
  const Profitledetailscontainer({
    Key? key,
    required this.title,
    required this.valuee,
  }) : super(key: key);
  final String title;
  final String valuee;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
          child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: kTextLightColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            SizedBox(
              height: .5.h,
            ),
            Text(
              valuee,
              style: const TextStyle(
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            SizedBox(
              height: .5.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: const Divider(
                thickness: 1,
              ),
            )
          ],
        ),
        const Icon(
          Icons.lock_outline,
          size: 20,
        )
      ])),
    );
  }
}
