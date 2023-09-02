// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medical_helthcare_ui_app/widget/canceledSchedule.dart';
import 'package:medical_helthcare_ui_app/widget/completd.dart';
import 'package:medical_helthcare_ui_app/widget/upcomingschedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;
  final _scheduleWidgets = [
    //Upcoming Widgets
    UpComingScheduleWidget(),
    //Completed Widget
    CompletedSchedule(),
    //Canceled Widget
    CancelSchedule(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Schedule',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal:15),
                      decoration: BoxDecoration(
                          color: _buttonIndex == 0
                              ? Color(0xFF7165D6)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "UpComing",
                        style: TextStyle(
                            color: _buttonIndex == 0
                                ? Colors.white
                                : Colors.black38,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      decoration: BoxDecoration(
                          color: _buttonIndex == 1
                              ? Color(0xFF7165D6)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                            color: _buttonIndex == 1
                                ? Colors.white
                                : Colors.black38,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      decoration: BoxDecoration(
                          color: _buttonIndex == 2
                              ? Color(0xFF7165D6)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Canceled",
                        style: TextStyle(
                            color: _buttonIndex == 2
                                ? Colors.white
                                : Colors.black38,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _scheduleWidgets[_buttonIndex]
          ],
        ),
      ),
    );
  }
}
