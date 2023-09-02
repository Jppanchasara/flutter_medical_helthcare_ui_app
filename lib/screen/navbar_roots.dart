// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medical_helthcare_ui_app/screen/appoinment_screen.dart';
import 'package:medical_helthcare_ui_app/screen/home_screen.dart';
import 'package:medical_helthcare_ui_app/screen/message_screen.dart';
import 'package:medical_helthcare_ui_app/screen/schedule_screen.dart';
import 'package:medical_helthcare_ui_app/screen/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    //home screen
    HomeScreen(),
    //Message Screen
    MessageScreen(),
    //Schedule Screen
    ScheduleScreen(),
    //AppoinmentScreen(),
    //Settings Screen
    SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
