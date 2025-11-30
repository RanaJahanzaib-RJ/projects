import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/global/colors.dart';
import 'package:my_project/paper_home.dart';

class PaperSplash extends StatefulWidget {
  const PaperSplash({super.key});

  @override
  State<PaperSplash> createState() => _PaperSplashState();
}

class _PaperSplashState extends State<PaperSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return PaperHome();
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff485BA7),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Paper who?\n Notepad’s got\n you covered!",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: triColor),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage("assets/Group 31.png"),),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
