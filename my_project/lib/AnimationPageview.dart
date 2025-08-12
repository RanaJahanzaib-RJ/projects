import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
void main(){
  runApp(PageviewApp());
}
class PageviewApp extends StatelessWidget {
  const PageviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView Example',
      debugShowCheckedModeBanner: false,
      home: PageViewScreen(),
    );
  }

}
class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         PageView(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              isLastPage = (value == 2);
            });
          },
          children: [
               Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    image: DecorationImage(image: NetworkImage
              ("https://static.vecteezy.com/system/resources/thumbnails/037/487/114/small/business-man-takes-notes-on-paper-looking-out-of-laptop-screen-during-online-lecture-for-students-consultancy-provides-remote-business-assistance-services-for-entrepreneurs-and-company-managers-png.png"),)
                  ),
                  child:Center(
                    child: Padding(
                      padding: const EdgeInsets.all(130.0),
                      child: Column(
                        children: [
                          Text("Let's Find You Tutor....",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                  ), 
                ),
             Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(image:NetworkImage
          ("https://png.pngtree.com/png-clipart/20220717/ourmid/pngtree-team-work-meeting-illustration-image-png-image_5947365.png"),
                ),
              ),
                child:Center(
                    child: Padding(
                      padding: const EdgeInsets.all(110.0),
                      child: Column(
                        children: [
                          Text("A Tutor You Get Along With....",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
            ),
             Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              image: DecorationImage(image: NetworkImage
            ("https://i0.wp.com/interversemedia.org/wp-content/uploads/2021/06/interverse-website-3.png?fit=500%2C400&ssl=1"),
              ),
            ), 
            child:Center(
                    child: Padding(
                      padding: const EdgeInsets.all(110.0),
                      child: Column(
                        children: [
                          Text("Now Let's Get to Work....",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),   
            ),
          ],
        ),
        Container(
          alignment: Alignment(0,0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  controller.jumpToPage(2);
                },
                child: Text("Skip")),
              SmoothPageIndicator(controller: controller, count:3,
              effect: WormEffect (),
              onDotClicked: (index){},
              ),
              isLastPage?
             GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return MyPage();
                }));
              },
              child: Text("Done")):
              GestureDetector(
                onTap: () {
                  controller.nextPage(duration: Duration(microseconds: 500), curve:Curves.easeIn);
                },
                 child: Text("Next")),
            ],
          ),
        ),
        ],
      ),
    );
  }
}


class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blueGrey.shade300,
    bottomNavigationBar:CurvedNavigationBar(
    backgroundColor: Colors.deepPurple,
    color: Colors.deepPurple.shade200,
    animationDuration: Duration(milliseconds: 300),
    items:[
        Icon(Icons.home, size: 30.0,color: Colors.white,),
        Icon(Icons.favorite, size: 30.0,color: Colors.white,),
        Icon(Icons.person, size: 30.0,color: Colors.white,),
        Icon(Icons.settings, size: 30.0,color: Colors.white,),
    ],
    ),
        drawer: Drawer(
        backgroundColor: Colors.blueGrey.shade100,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade100,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg"),
                  ),
                  Text("Welcome User",style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text("Home",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text("Favorites",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.black,),
              title: Text("Settings",style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("EDVERGE",style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications,color: Colors.white,),
          ),
        ],
      ),
      body:SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(30.0),
             child: Column(
             children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
               height: 50,
               width: 150,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white),
              ),
              child: Center(
              child: Row(
              children: [
              Icon(Icons.subject,color: Colors.black,),
              SizedBox(width: 10,),
              Text("SUBJECTS",style: TextStyle(fontSize: 18,color: Colors.white),),
              ],
              ),
             ),
                 ),
                   SizedBox(width: 10,),
                   Container(
                   height: 50,
                   width: 150,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(16),
                   border: Border.all(color: Colors.white),
                   ),
                   child: Center(
                   child: Row(
                   children: [
                   Icon(Icons.attach_money_rounded,color: Colors.black,),
                   SizedBox(width: 10,),
                   Text("C O S T",style: TextStyle(fontSize: 18,color: Colors.white),),
                  ],
                 ),
                 ), 
                 ),    
                  ],
                  ),
              SizedBox(height: 10,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
               height: 50,
               width: 150,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white),
              ),
              child: Center(
              child: Row(
              children: [
              Icon(Icons.favorite,color: Colors.red,),
              SizedBox(width: 10,),
              Text("RATING",style: TextStyle(fontSize: 18,color: Colors.white),),
              ],
              ),
             ),
                 ),
                   SizedBox(width: 10,),
                   Container(
                   height: 50,
                   width: 150,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(16),
                   border: Border.all(color: Colors.white),
                   ),
                   child: Center(
                   child: Row(
                   children: [
                   Icon(Icons.location_on_outlined,color: Colors.black,),
                   SizedBox(width: 10,),
                   Text("LOCATION",style: TextStyle(fontSize: 18,color: Colors.white),),
                  ],
                 ),
                 ), 
                 ),    
               ],
               ),
              SizedBox(height: 10,),
              TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
              hintText: "SEARCH FOR TUTOR",
              hintStyle: TextStyle(color: Colors.black),
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(Icons.search,color: Colors.black,),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
             ),
                ),
                ), 
              ],
             ),
           ),
              Container(
                            height: 430,
                            width:double.infinity,
                            decoration: BoxDecoration(
                             color: Colors.blueGrey.shade100,
                            ),
                            child: Expanded(child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Container(
                                    height: 400,
                                    width: 300,
                                   decoration: BoxDecoration(
                                     color: Colors.blueGrey.shade300,
                                     borderRadius: BorderRadius.circular(16),
                                   ),
                                   child: Column(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Row(
                                          children: [
                                             Container(
                                                height: 200,
                                                width: 150,
                                              decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(16),
                                              image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage("https://images.pexels.com/photos/2379003/pexels-photo-2379003.jpeg"),),
                                               ),
                                              ), 
                                            SizedBox(width: 10,),
                                            Column(
                                            children: [
                                             Text("Eddie Woo",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                             Text("\$80/hr"),
                                             SizedBox(height: 7,),
                                             SizedBox(
                                            height:50,
                                            width: 120,
                                            child: ElevatedButton(onPressed:(){},
                                            style: ElevatedButton.styleFrom(
                                            backgroundColor:Colors.greenAccent,
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16),
                                            ),
                                            ),
                                            
                                            child:Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                            Icon(Icons.messenger_outline_rounded,color: Colors.white,),
                                            Text("C H A T",style: TextStyle(fontSize:15,color: Colors.white),),
                                              ],
                                            ) ,
                                            ),
                                             ),
                                             SizedBox(height: 10,),
                                             SizedBox(
                                            height:50,
                                            width: 120,
                                            child: ElevatedButton(onPressed:(){},
                                            style: ElevatedButton.styleFrom(
                                            backgroundColor:Colors.deepPurple,
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16),
                                            ),
                                            ),
                                            child:Center(
                                            child:Row(
                                             children: [
                                            Icon(Icons.check_circle_outline,color: Colors.white,),
                                            Text("H I R E",style: TextStyle(fontSize:15,color: Colors.white),),
                                              ],
                                            ) ,
                                            ),
                                            ),
                                             ),
                                              ],
                                            ),
                                          ],
                                         ),
                                       ),
                                       SizedBox(height: 10,),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                         height: 150,
                                         width: 300,
                                         decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(16),
                                         border: Border.all(
                                         color: Colors.white,
                                         ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                            children: [
                                            Row(
                                            children: [
                                            Icon(Icons.person),
                                            SizedBox(width: 10,),
                                            Text("B I O"),
                                              ],
                                            ),
                                            Row(
                                            children: [
                                            Text(" I am a Computer Teacher"),
                                            ],
                                            ),
                                              ],
                                            ),
                                          ),
                                          ),
                                       ),
                                     ],
                                   ),
                                  ),
                                  SizedBox(height: 15,),
                                                               Container(
                                    height: 400,
                                    width: 300,
                                   decoration: BoxDecoration(
                                     color: Colors.blueGrey.shade300,
                                     borderRadius: BorderRadius.circular(16),
                                   ),
                                   child: Column(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Row(
                                          children: [
                                            Container(
                                              height: 200,
                                              width: 150,
                                             decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage
                                            ("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg"),
                                            ),
                                             ),
                                            ), 
                                            SizedBox(width: 10,),
                                            Column(
                                            children: [
                                             Text("April Smith",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                             Text("\$40/hr"),
                                             SizedBox(height: 7,),
                                             SizedBox(
                                            height:50,
                                            width: 120,
                                            child: ElevatedButton(onPressed:(){},
                                            style: ElevatedButton.styleFrom(
                                            backgroundColor:Colors.greenAccent,
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16),
                                            ),
                                            ),
                                            child:Center(
                                            child:Row(
                                             children: [
                                            Icon(Icons.messenger_outline_rounded,color: Colors.white,),
                                            Text("C H A T",style: TextStyle(fontSize:15,color: Colors.white),),
                                              ],
                                            ) ,
                                            ),
                                            ),
                                             ),
                                             SizedBox(height: 10,),
                                             SizedBox(
                                            height:50,
                                            width: 120,
                                            child: ElevatedButton(onPressed:(){},
                                            style: ElevatedButton.styleFrom(
                                            backgroundColor:Colors.deepPurple,
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16),
                                            ),
                                            ),
                                            child:Center(
                                            child:Row(
                                             children: [
                                            Icon(Icons.check_circle_outline,color: Colors.white,),
                                            Text("H I R E",style: TextStyle(fontSize:15,color: Colors.white),),
                                              ],
                                            ) ,
                                            ),
                                            ),
                                             ),
                                              ],
                                            ),
                                          ],
                                         ),
                                       ),
                                       SizedBox(height: 10,),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                         height: 150,
                                         width: 300,
                                         decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(16),
                                         border: Border.all(
                                         color: Colors.white,
                                         ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                            children: [
                                            Row(
                                            children: [
                                            Icon(Icons.person),
                                            SizedBox(width: 10,),
                                            Text("B I O"),
                                              ],
                                            ),
                                            Row(
                                            children: [
                                            Text(" I am a Physics Teacher"),
                                            ],
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
                            ),
                 ),
          
         ],
       ),
      ),
    );
  }
}