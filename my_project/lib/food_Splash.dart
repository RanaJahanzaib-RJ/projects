
import 'package:flutter/material.dart';
import 'package:my_project/food_home.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      home: FoodSplash(),
    );
  }
}

class FoodSplash extends StatefulWidget {
  const FoodSplash({super.key});

  @override
  State<FoodSplash> createState() => _FoodSplashState();
}

class _FoodSplashState extends State<FoodSplash> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 840,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/Group 11.png"),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/panda.png"),
                        ),
                      ),
                    ),
                    Text(
                      "Food Order",
                      style: TextStyle(
                          fontSize: 50,
                          color: Color(0xffFFFFFF),
                          fontFamily: "StoryScript"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 10,
                      child: SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return FoodHome();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              "Get Started",
                              style: TextStyle(color: Color(0xff000000)),
                            )),
                      ),
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
