
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/EasyLOgin.dart';
import 'package:my_project/EasyPay.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EASYSPLASH extends StatefulWidget {
  const EASYSPLASH({super.key});

  @override
  State<EASYSPLASH> createState() => _EASYSPLASHState();
}

class _EASYSPLASHState extends State<EASYSPLASH> {
  @override
  void initState() {
    super.initState();
   isLOGIN();
  }
  void isLOGIN()async{
  SharedPreferences sp =await SharedPreferences.getInstance();
   bool isLOGIN = sp.getBool('isLOGIN')?? false;
   if(isLOGIN){
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,MaterialPageRoute(builder: (context){
        return Easypay();
      }));
    });
   }else{
    Timer(Duration(seconds: 5),(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return Intropage();
    }));
    });
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("EASYPAY.COM",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}

