import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_app/Widgets/HomeScreenItems.dart';

class ItemesOfListView extends StatelessWidget {
  const ItemesOfListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeScreenItems(
                onpress: () {},
                icon: "Assets/Icons/assignment.svg",
                text: "Assignments"),
            HomeScreenItems(
                onpress: () {},
                icon: "Assets/Icons/timetable.svg",
                text: "Time Table")
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeScreenItems(
                onpress: () {},
                icon: "Assets/Icons/datesheet.svg",
                text: "Date Sheet"),
            HomeScreenItems(
                onpress: () {},
                icon: "Assets/Icons/quiz.svg",
                text: "Take Quiz")
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeScreenItems(
                onpress: () {}, icon: "Assets/Icons/ask.svg", text: "Ask"),
            HomeScreenItems(
                onpress: () {},
                icon: "Assets/Icons/result.svg",
                text: "Results")
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeScreenItems(
              onpress: () {},
              icon: 'Assets/Icons/event.svg',
              text: 'Events',
            ),
            HomeScreenItems(
                onpress: () {},
                icon: "Assets/Icons/holiday.svg",
                text: "Holidays")
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
      ],
    );
  }
}
