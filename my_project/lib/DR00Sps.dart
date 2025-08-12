
import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_project/DR00.dart';
import 'package:my_project/DR01.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPLASH extends StatefulWidget {
  const SPLASH({super.key});

  @override
  State<SPLASH> createState() => _SPLASHState();
}

class _SPLASHState extends State<SPLASH> {
    @override
  void initState() {
    super.initState();
    isLogin();
  }
  void isLogin ()async{
  SharedPreferences sp = await SharedPreferences.getInstance();
  bool isLogin = sp.getBool('isLogin') ?? false;

   if(isLogin){
    Timer(Duration(seconds: 3),(){
      Navigator.push(context,MaterialPageRoute(builder:(context){
      return DRSCReen();
      }));
    });
   }else{
    Timer(Duration(seconds: 3),(){
      Navigator.push(context,MaterialPageRoute(builder:(context){
        return DRLOGIN();
      }));
    });
   }
  }
 
  final ColorizeColor = [
  Colors.white,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.games_outlined,color: Colors.white,size: 30.0,),
                ],
              ),
           SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(90.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    AnimatedTextKit(animatedTexts:[
                      ColorizeAnimatedText('HELLO DOCTOR', textStyle:TextStyle(fontSize: 35,fontWeight: FontWeight.bold), colors:ColorizeColor)
                    ],
                    isRepeatingAnimation: true,
                    ),
                    ],
                  ),
                ),
              ),
             Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Health\n Made\n Simple",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                   Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage
        ("https://static.vecteezy.com/system/resources/thumbnails/046/680/105/small/an-pakistani-female-doctor-on-isolated-transparent-background-png.png"),),
                    ),
                  ),
                ],
              ),
              ],
            ),
          ),
       
      ),
    );
  }
}
