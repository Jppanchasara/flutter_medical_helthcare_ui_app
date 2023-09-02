// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medical_helthcare_ui_app/widget/chat_Screen.dart';

class MessageScreen extends StatelessWidget {
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctor1.jpg",
    "doctor2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Message",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 2)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search", border: InputBorder.none),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xFF7165D6),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Active Now",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 10)
                          ]),
                      child: Stack(
                        textDirection: TextDirection.rtl,
                        children: [
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                              },
                              child: Container(
                                height: 65,
                                width: 65,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    "images/${imgs[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(3),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green, shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Recent Chat",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    minVerticalPadding: 15,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/${imgs[index]}"),
                    ),
                    title: Text(
                      "Dr. Doctor Name",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Hello,Doctor are your there?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    trailing: Text(
                      "12:30",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  );
                },
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    minVerticalPadding: 15,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/${imgs[index]}"),
                    ),
                    title: Text(
                      "Dr. Doctor Name",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Hello,Doctor are your there?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    trailing: Text(
                      "12:30",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  );
                },
              )
            ],
          ),
        ]);
  }
}
