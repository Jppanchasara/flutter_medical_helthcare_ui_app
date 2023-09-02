// ignore_for_file: prefer_const_constructors

import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatSmaple extends StatelessWidget {
  const ChatSmaple({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Color(0xFFE1E1E2)),
              child: Text(
                "Hello, what i can do for you, you can book appoinment directly",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Color(0xFF7165D6)),
                child: Text(
                  "Hello Doctor,Are you There?",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
