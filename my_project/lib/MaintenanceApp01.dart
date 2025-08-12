import 'package:flutter/material.dart';
void main (){
  runApp(DesignApp());
}
class DesignApp extends StatelessWidget {
  const DesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DesignAppScreen(),
    );
  }
}
class DesignAppScreen extends StatefulWidget {
  const DesignAppScreen({super.key});

  @override
  State<DesignAppScreen> createState() => _DesignAppScreenState();
}

class _DesignAppScreenState extends State<DesignAppScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFFEAF0FA),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30.0,color: Colors.black,),),
       ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.only(left: 90),
               child: Column(
                children: [
               ListTile(
               title: Text("Maintenance",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
               subtitle: Text("Box",style: TextStyle(fontSize: 18,color: Colors.orange,fontWeight: FontWeight.bold),),
               leading: Image.network("https://static.vecteezy.com/system/resources/previews/035/319/747/non_2x/tools-glyph-gradient-background-icon-for-personal-and-commercial-use-free-vector.jpg",),
                 ),
                ],
               ),
             ),
                 SizedBox(height: 20,),
                 Text("Log in",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Text("Lorem ipsum dolor sit amet,",style: TextStyle(fontSize: 16,color: Colors.black),),
                 Text("consecture adipiscing elit.",style: TextStyle(fontSize: 16,color: Colors.black),),
                 SizedBox(height: 20,),  
                 TextField(
                  keyboardType:TextInputType.emailAddress ,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.amber),
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.email_rounded)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffE4E7EB),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                       color: Color(0xffE4E7EB),
                      ),
                    ),
                  ),
                 ), 
                 SizedBox(height: 15,),
              TextField(
                  keyboardType:TextInputType.emailAddress ,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.amber),
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.lock_outline)),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffE4E7EB),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                            color: Color(0xffE4E7EB),
                      ),
                    ),
                  ),
                 ),
                 SizedBox(height: 7,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                TextButton(onPressed: (){}, child:Text("Forget Password",style: TextStyle(fontSize: 18,color: Colors.orange,decoration: TextDecoration.underline),),),
                  ],
                 ),
                 SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                   child:Text("LOG IN",style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(height: 20,),
                ListTile(
                  title: TextButton(onPressed: (){}, child:Text("Don't have an account?",style: TextStyle(color: Colors.black),),),
                  contentPadding: EdgeInsets.symmetric(horizontal: 100),
                  trailing:TextButton(onPressed: (){}, child:Text("Sign Up",style: TextStyle(color: Colors.orange),),), 
                ),
            ],
          ),
      ),

    );
  }
}
