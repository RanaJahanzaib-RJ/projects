import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/global/colors.dart';
import 'package:my_project/quiz.dart';
import 'package:my_project/quiz_home.dart';

class Quizesplash extends StatefulWidget {
  const Quizesplash({super.key});

  @override
  State<Quizesplash> createState() => _QuizesplashState();
}

class _QuizesplashState extends State<Quizesplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return QuizPage1();
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF7CC),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffFFDF33),
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Group 33.png")),
                    ),
                  ),
                ),
              ),
              Text(
                "Quiz App",
                style: TextStyle(
                    fontSize: 40,
                    color: secondaryColor,
                    fontFamily: "StoryScript"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerField extends StatefulWidget {
  String text;
  IconData icon;
  ContainerField({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  State<ContainerField> createState() => _ContainerFieldState();
}

class _ContainerFieldState extends State<ContainerField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 6,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          hintText: widget.text,
          fillColor: Color(0xffFFF7CC),
          hintStyle: TextStyle(color: getColor),
          prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                widget.icon,
                color: getColor,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: getColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: getColor,
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileImage extends StatefulWidget {
  String imgurl;
  ProfileImage({super.key, required this.imgurl});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(widget.imgurl),
        ),
      ),
    );
  }
}

class ContainerClasses extends StatefulWidget {
  String imgurl;
  ContainerClasses({super.key, required this.imgurl});

  @override
  State<ContainerClasses> createState() => _ContainerClassesState();
}

class _ContainerClassesState extends State<ContainerClasses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(widget.imgurl),
        ),
      ),
    );
  }
}

class RewardContainer extends StatefulWidget {
  String text, write;
   RewardContainer({super.key,
   required this.text,
   required this.write,
   });

  @override
  State<RewardContainer> createState() => _RewardContainerState();
}

class _RewardContainerState extends State<RewardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xffD6FC92),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xffD6FC92),
                child: Image.asset("assets/Group 42.png"),
              ),
              title: Text(widget.text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: getColor),),
              subtitle: Text(widget.write,style: TextStyle(fontSize: 17,color: getColor),),
            ),
          ],
        ),
      ),
    );
  }
}
