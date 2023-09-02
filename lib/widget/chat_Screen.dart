// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'chat_smaple.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Color(0xFF7165D6),
            leadingWidth: 20,
            title: ListTile(
              title: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/doctor1.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Dr. Doctor Name",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 15, top: 8),
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, top: 8),
                child: Icon(
                  Icons.video_call,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, top: 8),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 26,
                ),
              )
            ],
          ),
          preferredSize: Size.fromHeight(70)),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemCount: 10,
        itemBuilder: (context, index) => ChatSmaple(),
      ),
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10)
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: 230,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Type something....",
                      border: InputBorder.none),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Color(0xFF7165D6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
