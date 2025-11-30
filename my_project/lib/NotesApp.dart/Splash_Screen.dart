import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_project/NotesApp.dart/home_noteScreen.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context, ) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://png.pngtree.com/png-vector/20240529/ourmid/pngtree-google-note-app-icon-on-a-white-background-vector-png-image_6965763.png"))
            ),
          ),
          SizedBox(height: 20),
          Text(
            'My Notes',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.deepPurple,
      nextScreen: HomeScreenPart2(),
      // nextScreen: NotesHomePage(), // Replace with your home screen
      splashIconSize: 200,
      duration: 3000,
      animationDuration: Duration(seconds: 1),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}