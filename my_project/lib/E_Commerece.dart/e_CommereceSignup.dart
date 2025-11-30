import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/E_Commerece.dart/e_CommereceSignIn.dart';

import 'package:my_project/global/colors.dart';



class EcomerceSignup extends StatefulWidget {
  const EcomerceSignup({super.key});

  @override
  State<EcomerceSignup> createState() => _EcomerceSignupState();
}

class _EcomerceSignupState extends State<EcomerceSignup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obsecureText = false;

  void createWithEmailAndPassword() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
      } on FirebaseAuthException catch (e) {
        if (e.code == "weak- password") {
          print("The password provided is too- weak");
        } else if (e.code == "e_mail aleady in use") {
          print("The account already exist for the email");
        }
      } catch (e) {
        print(e);
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign up Successfully"),
        ),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return EcommerceSignin();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sign UP",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                      fontFamily: "StoryScript"),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
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
                        return "Please enter your email";
                      } else if (!value.contains("@")) {
                        return "Invalid email format";
                      } else {
                        return null;
                      }
                    },
                  ),
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
                      return "Password must be at least 9 digits";
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
                    onPressed: () {
                      createWithEmailAndPassword();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "StoryScript",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [],
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}