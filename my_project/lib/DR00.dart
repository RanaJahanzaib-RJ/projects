
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_project/DR00Sps.dart';
import 'package:my_project/DR01.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(SPApp());
}

class SPApp extends StatelessWidget {
  const SPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DR LOGIN',
      home: SPLASH(),
    );
  }
}



class SPscreen extends StatefulWidget {
  const SPscreen({super.key});

  @override
  State<SPscreen> createState() => _SPscreenState();
}

class _SPscreenState extends State<SPscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
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
                 SizedBox(height: 15,),
               Row(
                children: [
           Text("Tailord Care \nfor Your Unique\n Need",style: TextStyle(fontSize: 30,color: Colors.white,),),
                ],
               ),
             SizedBox(height: 15,),
               Row(
               children: [
                InkWell(
                  onTap: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context){
                    return ConnectedDR();
                   }));
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                       child: Center(
                      child: Text(">>>",style: TextStyle(fontSize: 20,color: Colors.white),),),
                  ),
                ),
               ],
               ),
             Row(
         mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 300,
                  width: 300,
                 decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage
          ("https://static.vecteezy.com/system/resources/previews/041/408/858/non_2x/ai-generated-a-smiling-doctor-with-glasses-and-a-white-lab-coat-isolated-on-transparent-background-free-png.png"),
                  ),
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

class ConnectedDR extends StatefulWidget {
  const ConnectedDR({super.key});

  @override
  State<ConnectedDR> createState() => _ConnectedDRState();
}

class _ConnectedDRState extends State<ConnectedDR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(child:
       Padding(
         padding: const EdgeInsets.all(30.0),
         child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             Icon(Icons.games_outlined,color: Colors.white,size: 30.0,),
                    ],
                  ),
                   SizedBox(height: 15,),
                 Row(
                  children: [
             Text("Your Health\n Made Simple\n Today",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                 ),
                       Row(
           mainAxisAlignment: MainAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                   decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage
            ("https://static.vecteezy.com/system/resources/previews/017/415/572/non_2x/medical-team-doctor-nurse-surgeon-and-ppe-coat-png.png"),
                    ),
                   ),
                  ),
                ],
               ),
               SizedBox(height: 10,),
               SizedBox(
                height: 70,
                width: double.infinity,
                child: ElevatedButton(onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return DRLOGIN();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                
               child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child:Stack(
                        alignment: Alignment.center,
                        children: [
                         Icon(Icons.favorite_border_outlined,color: Colors.red,size: 30.0,),
                         Positioned(child: Icon(Icons.add,size: 14,color: Colors.white,),),

                        ],
                      ),
                    ),
                    Text(">>>",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.check,color: Colors.white,),
                    ),
                  ],
                 ),
                ),
               ),
          ],
         ),
       ),
      ),
    );
  }
}

class DRLOGIN extends StatefulWidget {
  const DRLOGIN({super.key});

  @override
  State<DRLOGIN> createState() => _DRLOGINState();
}

class _DRLOGINState extends State<DRLOGIN> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final ageController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
    body: SafeArea(
    child:Column(
      children: [
        Container(
          height: 600,
          width:double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image:NetworkImage
        ("https://static.vecteezy.com/system/resources/previews/017/415/572/non_2x/medical-team-doctor-nurse-surgeon-and-ppe-coat-png.png"),
            ),
          ),
          child: Column(
            children: [
            Row(
           children: [
           IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
         ],
        ),
        Spacer(),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                      AnimatedTextKit(animatedTexts:[
                        WavyAnimatedText('LOGIN NOW',textStyle: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                      isRepeatingAnimation: true,
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: 'NAME',
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                           TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'EMAIL',
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                        TextFormField(
                        keyboardType: TextInputType.number,
                        controller: ageController,
                        decoration: InputDecoration(
                          hintText: 'AGE',
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        flex: 2,
                        child:Row(
                          children: [
                            SizedBox(
                              height: 60,
                              width: 230,
                             child: ElevatedButton(onPressed: ()async {
                             SharedPreferences sp =await SharedPreferences.getInstance();
                             sp.setString('name',nameController.text.toString(),);
                             sp.setString('email',emailController.text.toString(),);
                             sp.setString('age',ageController.text.toString(),);
                             sp.setBool('isLogin', true);
                             // ignore: use_build_context_synchronously
                             Navigator.push(context,MaterialPageRoute(builder: (context){
                             return DRSCReen();
                             }));
                             },
                             style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                             ),
                              child:Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20),)),), 
                            ),
                             SizedBox(
                              height: 60,
                              width: 230,
                             child: ElevatedButton(onPressed: (){},
                             style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                             ),
                              child:Center(child: Text("SIGNIN",style: TextStyle(color: Colors.white,fontSize: 20),)),), 
                            ),
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    ),
    );
  }
}