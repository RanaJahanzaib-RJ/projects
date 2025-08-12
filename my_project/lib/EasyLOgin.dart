
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_project/EasyPay.dart';
import 'package:my_project/EASYsps.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: EASYSPLASH(),
    );
  }
}

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  var Time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
             Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image:NetworkImage
              ('https://png.pngtree.com/png-vector/20220521/ourmid/pngtree-young-man-wears-glasses-png-image_4658927.png'),
                ),
              ),
             ),
             SizedBox(height: 20,),
              AnimatedTextKit(animatedTexts:[
                WavyAnimatedText("LOGIN",textStyle: TextStyle(fontSize: 20,color: Colors.black,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),),
              ]),
              SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "NAME",
                        fillColor: Color(0xffF8F9FA),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffE4E7EB),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffE4E7EB),
                          ),
                        ),
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_sharp,color: Colors.orange,),),
                        prefixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.orange,),), 
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                        decoration: InputDecoration(
                        hintText: "EMAIL",
                        fillColor: Color(0xffF8F9FA),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            width: 2,
                            color:Color(0xffE4E7EB),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            width: 2,
                            color:Color(0xffE4E7EB),
                          ),
                        ),
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_sharp,color: Colors.orange,),),
                        prefixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.email_outlined,color: Colors.orange,),), 
                      ),
                    ),
                  ),
                     Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: ageController,
                        decoration: InputDecoration(
                        hintText: "AGE",
                        fillColor: Color(0xffF8F9FA),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            width: 2,
                            color:Color(0xffE4E7EB),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            width: 2,
                            color:Color(0xffE4E7EB),
                          ),
                        ),
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_sharp,color: Colors.orange,),),
                        prefixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.numbers,color: Colors.orange,),), 
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    width: 350,
                  child:ElevatedButton(onPressed: ()async{
                    SharedPreferences sp =await  SharedPreferences.getInstance();
                    sp.setString('name',nameController.text.toString(), );
                    sp.setString('email',emailController.text.toString(),);
                    sp.setString('age',ageController.text.toString(),);
                    sp.setBool('isLOGIN',true);
                    Navigator.push(context,MaterialPageRoute(builder:(context){
                      return Easypay();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  ),
                  ),
                   child: Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
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