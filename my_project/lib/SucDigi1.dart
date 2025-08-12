import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/DR00.dart';

import 'package:my_project/SucDigi2.dart';


class Sucdigi1 extends StatefulWidget {
  const Sucdigi1({super.key});

  @override
  State<Sucdigi1> createState() => _Sucdigi1State();
}

class _Sucdigi1State extends State<Sucdigi1> {
  @override
 void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return SucScreen();
      }));
    });

  }
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SUCCESS DIGITAL',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.red),),
            ],
          ),
        ),
      ),
    );
  }
}
