

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_project/E_Commerece.dart/e_CommereceSignup.dart';



class EcommerceSplash extends StatefulWidget {
  const EcommerceSplash({super.key});

  @override
  State<EcommerceSplash> createState() => _EcommerceSplashState();
}

class _EcommerceSplashState extends State<EcommerceSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
    return EcomerceSignup();
    }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Group 58.png"),),
          ),
        ),
        Container(
        height: 30,
        width: 150,
        decoration: BoxDecoration(
        color: Color(0xffFFA451),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomRight: Radius.circular(16),),
        ),
        child: Center(
        child: Text("Fruit Hub",style: TextStyle(fontSize: 18,color: Color(0xffFFFFFF),fontFamily: "StoryScript"),),
        ),
        ),
        ],
        ),
      ),
    ),
    );
  }
}