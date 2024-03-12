import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
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
              onTap: () {
                //Send Report to school management
              },
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
      body: Column(
        children: [
          Container(
            height: 25.h,
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
          ),
          SizedBox(
            height: 1.h,
          ),
          Center(
              child: Text(
            'Student Data',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          )),
          SizedBox(
            height: 1.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 75.h,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
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
                        hintText: "First name",
                        hintStyle: TextStyle(
                          height: 1,
                          color: kPrimaryColor,
                          fontSize: 15.sp,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        isDense: true,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
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
                        hintText: "Last name",
                        hintStyle: TextStyle(
                          height: 1,
                          color: kPrimaryColor,
                          fontSize: 15.sp,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        isDense: true,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Academic year',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                             
                             
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
