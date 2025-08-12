import 'package:flutter/material.dart';

void main(){
  runApp(CustomApp(),);{
  }
  }
class CustomApp extends StatelessWidget {
  const CustomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomScreen(),
    );
  }
}
class CustomScreen extends StatefulWidget {
  const CustomScreen({super.key});

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('THE COMPUTING CLUB',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color:Colors.red),),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [ 
            Stack(
              children: [
             Container(
                height: 170,
                // width: 550,
               decoration: BoxDecoration(
                image: DecorationImage(
                image: NetworkImage
               ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Zps9tZx-vEaLkPf3Yq9HAjkavpvXoNSA0g&s')
                ),
                 color: Colors.black, 
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(90),bottomLeft: Radius.circular(90),),
               ),
              ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search 'assignment'",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                   enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                   ),
                  prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_outlined),),
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp),),
                ),
              ),
            ),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Recent",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.bold),),  
                  IconButton(onPressed: (){}, icon:  Text("See all",style: TextStyle(fontSize: 15,color: Colors.green,),),),
                ],
              ),
            ),
            SizedBox(height: 12,),
            SingleChildScrollView(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     height: 130,
                  width: 550,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 70,
                    itemBuilder: (context, index) {
                      return CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  ),
                ),
              ),  
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       Text("Categories",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.bold),),
            //     ],
            //   ),
            // ),
             SingleChildScrollView(
             child: Expanded(child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                height: 550,
                width: 550,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                  children: [
                    Text("Categories",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                   ),
                     ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                          child:  
                             Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Container(
                              height: 60,
                              width: 150,
                             child: Center(
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.download_sharp),
                                  SizedBox(width: 10,),
                                  Text('Download',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                ],
                               ),
                             ),
                             decoration: BoxDecoration(
                               color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(11),
                             ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                               height: 60,
                              width: 150,
                                  child: Center(
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.image_rounded),
                                  SizedBox(width: 10,),
                                  Text('Images',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                ],
                               ),
                             ),
                             decoration: BoxDecoration(
                               color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(11),
                             ),
                              ),
                              ],
                            ),
                          ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Row(
                          children: [
                            Container(
                          height: 60,
                          width: 150,
                             child: Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.videocam_outlined),
                                SizedBox(width: 10,),
                                Text('Videos',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                             ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(11),
                           ),
                            ),
                            SizedBox(width: 5,),
                         Container(
                        height: 60,
                          width: 150,
                                child: Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.audiotrack_rounded),
                                SizedBox(width: 10,),
                                Text('Audio',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                             ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(11),
                           ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Row(
                          children: [
                            Container(
                         height: 60,
                          width: 150,
                                child: Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.edit_document),
                                SizedBox(width: 10,),
                                Text('Documents',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                             ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(11),
                           ),
                            ),
                            SizedBox(width: 5,),
                         Container(
                         height: 60,
                          width: 150,
                               child: Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.app_registration_sharp),
                                SizedBox(width: 10,),
                                Text('Apps',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                             ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(11),
                           ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Collections",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.bold),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.hide_image))
                  ],
                   ),
                     ),
                    SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Row(
                          children: [
                            Container(
                        height: 60,
                          width: 150,
                                child: Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star_border),
                                SizedBox(width: 10,),
                                Text('Starred',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                             ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(11),
                           ),
                            ),
                            SizedBox(width: 5,),
                         Container(
                          height: 60,
                          width: 150,
                                 child: Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.lock),
                                SizedBox(width: 10,),
                                Text('Safe folder',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                             ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(11),
                           ),
                            ),
                          ],
                        ),
                      ),
                   Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                  children: [
                    Text("All storage",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
                ),
                 SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Row(
                          children: [
                            Container(
                        height: 60,
                          width: 150,
                                 child: Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.phone_android),
                                SizedBox(width: 10,),
                                Text('Internal storage',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                             ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(11),
                           ),
                            ),
                            SizedBox(width: 5,),
                         Container(
                        height: 60,
                          width: 150,
                               child: Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.line_axis_outlined),
                                SizedBox(width: 10,),
                                Text('Other storage',style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                             ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(11),
                           ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // decoration: BoxDecoration(
                //   color: Colors.amber,
                //   borderRadius: BorderRadius.circular(11),
                // ),
               ),
             ),
             ),
             ), 
        Padding(
          padding: const EdgeInsets.only(left: 350),
          child: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.scatter_plot,color: Colors.redAccent,),
      backgroundColor: Colors.black,
      ),
        ),
             
            ],
          ),
          
      ),
    
    );
  }
}