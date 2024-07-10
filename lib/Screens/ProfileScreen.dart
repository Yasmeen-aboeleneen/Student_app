import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Widgets/ProfileDetailsRow.dart';
import 'package:student_app/Widgets/profitleDetailsContainer.dart';
import 'package:student_app/Widgets/topContainer_Profile.dart';
import '../Core/Constants/Constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: kOtherColor,
            appBar: AppBar(
              iconTheme: const IconThemeData(
                opacity: 100,
                color: kOtherColor,
              ),
              backgroundColor: kPrimaryColor,
              elevation: 4,
              title: Text(
                'Profile Details',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: kTextWhiteColor),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: const Row(
                        children: [
                          Icon(Icons.report_gmailerrorred_outlined),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            body: Column(children: [
              const TopcontainerProfileScreen(),
              SizedBox(
                height: 1.5.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Profiledetailsrow(
                      title: 'Registration Number', value: '2024-ALC-2025'),
                  Profiledetailsrow(title: 'Academic Year', value: '2024-2025')
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Profiledetailsrow(title: 'Admission class', value: '2-B'),
                  Profiledetailsrow(title: 'Admission class', value: '42')
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Profiledetailsrow(
                      title: 'Date of Admission ', value: '1 Aug , 2024'),
                  Profiledetailsrow(title: 'Date of Birth', value: '7 May 2018')
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              const Profitledetailscontainer(
                  title: ' Full Name', valuee: ' Yousef Waheed Waked'),
              const Profitledetailscontainer(
                  title: ' Email', valuee: ' yousefwaheed@gmail.com'),
              const Profitledetailscontainer(
                  title: ' Phone Number', valuee: ' 012345678')
            ])));
  }
}
