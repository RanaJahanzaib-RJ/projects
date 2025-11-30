import 'package:flutter/material.dart';
import 'package:my_project/global/colors.dart';
import 'package:my_project/quiz_home.dart';
import 'package:my_project/quizeSplash.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quizesplash(),
    );
  }
}

class QuizPage1 extends StatefulWidget {
  const QuizPage1({super.key});

  @override
  State<QuizPage1> createState() => _QuizPage1State();
}

class _QuizPage1State extends State<QuizPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF7CC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                "Akwaaba!",
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    fontFamily: "StoryScript",
                    color: getColor),
              ),
              subtitle: Text(
                "Test your knowledge on all\n things Ghana!",
                style: TextStyle(fontSize: 25, color: getColor),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/Group 34.png")),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Dive in and quiz your way\n through time! ✨",
                      style: TextStyle(fontSize: 20, color: getColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: getColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: triColor),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return QuizPage2();
                            }));
                          },
                          child: Text(
                            "Log in ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: getColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizPage2 extends StatefulWidget {
  const QuizPage2({super.key});

  @override
  State<QuizPage2> createState() => _QuizPage2State();
}

class _QuizPage2State extends State<QuizPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF7CC),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffFFDF33),
                ),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Group 33.png")),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 45, color: getColor, fontFamily: "StoryScript"),
              ),
              Row(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                        fontSize: 25,
                        color: getColor,
                        fontFamily: "StoryScript"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ContainerField(
                text: "Enter preferred username",
                icon: Icons.person,
              ),
              Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 25,
                        color: getColor,
                        fontFamily: "StoryScript"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ContainerField(
                text: "at least 8 characters",
                icon: Icons.lock,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: 20, color: getColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: getColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: triColor),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return QuizPage3();
                      }));
                    },
                    child: Text(
                      "Create Account ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: getColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class QuizPage3 extends StatefulWidget {
  const QuizPage3({super.key});

  @override
  State<QuizPage3> createState() => _QuizPage3State();
}

class _QuizPage3State extends State<QuizPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Create an account",
                style: TextStyle(
                    fontSize: 45, color: getColor, fontFamily: "StoryScript"),
              ),
              SizedBox(height: 30,),
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage("assets/Group 35.png")),
                      border: Border.all(
                        color: getColor,
                      ),
                    ),
                  ),
                   Positioned(
                          bottom: 0,
                          right: 0,
                      child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffFFE766),
                      child: Center(
                      child: Icon(Icons.edit,size: 20.0,color: getColor,),
                      ),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                        fontSize: 25,
                        color: getColor,
                        fontFamily: "StoryScript"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ContainerField(
                text: "Enter preferred username",
                icon: Icons.person,
              ),
              Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 25,
                        color: getColor,
                        fontFamily: "StoryScript"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ContainerField(
                text: "example@email.com",
                icon: Icons.email_outlined,
              ),
              Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 25,
                        color: getColor,
                        fontFamily: "StoryScript"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ContainerField(
                text: "at least 8 characters",
                icon: Icons.lock,
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                         Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return QuizHome();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: getColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: triColor),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return QuizPage2();
                      }));
                    },
                    child: Text(
                      "Log in ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: getColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
