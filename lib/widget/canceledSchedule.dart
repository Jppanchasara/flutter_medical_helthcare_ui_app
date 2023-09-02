// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CancelSchedule extends StatelessWidget {
  const CancelSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Doctor",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Dr. Doctor Name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Therapist"),
                          trailing: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("images/doctor2.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Divider(
                            thickness: 1,
                            height: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12/01/2023",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "10:30 AM",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Cancel",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
        ],
      ),
    );
  }
}
