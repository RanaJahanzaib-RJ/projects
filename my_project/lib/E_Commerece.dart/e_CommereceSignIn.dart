
import 'package:flutter/material.dart';
import 'package:my_project/E_Commerece.dart/e_commereceHome.dart';
import 'package:my_project/global/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EcommerceSignin extends StatefulWidget {
  const EcommerceSignin({super.key});

  @override
  State<EcommerceSignin> createState() => _EcommerceSigninState();
}

class _EcommerceSigninState extends State<EcommerceSignin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obsecureText = false;
  final _formKey = GlobalKey<FormState>();
  void signInWithEmailAndPassword() async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
       

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Sign up successfully"),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == "user-not-found") {
          print("No user found for that email.");
        } else if (e.code == "wrong Password") {
          print("Wrong password provided for that user");
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Error validation"),
          ),
        
        );
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){
        return EcommerceHome();
        }));
    }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sign IN",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                      fontFamily: "StoryScript"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    fillColor: Color(0xffEF3F1F1),
                    filled: true,
                    hintStyle: TextStyle(color: primaryColor),
                    prefixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.email_rounded)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffEF3F1F1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffEF3F1F1),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your UserName";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: _obsecureText,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    fillColor: Color(0xffEF3F1F1),
                    filled: true,
                    hintStyle: TextStyle(color: primaryColor),
                    prefixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.lock_outline)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obsecureText = !_obsecureText;
                          });
                        },
                        icon: Icon(
                          _obsecureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffEF3F1F1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffEF3F1F1),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter your Password ";
                    } else if (value.length < 8) {
                      return "Password must be at least 8 digits";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: signInWithEmailAndPassword,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "StoryScript",
                        ),
                      )),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}