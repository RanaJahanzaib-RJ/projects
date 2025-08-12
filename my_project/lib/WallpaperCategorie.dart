import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios),),
        title:WidgetTitel(),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.sms_outlined))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
           Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               TextButton(onPressed: (){}, child:Text("All Cardialogist",style: TextStyle(fontSize: 16,color: Colors.black),),),
               TextButton(onPressed: (){}, child:Text("See All",style: TextStyle(fontSize: 16,color: Colors.black),),),
                ],
              ),

            SizedBox(height: 20,),
                Container(
                  height: 90,
                  width: double.infinity,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                 ),
                 child: FloatingActionButton(onPressed: (){},
                 backgroundColor:Color(0xFFEAF0FA) ,
                 child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                image: NetworkImage
                ("https://png.pngtree.com/png-clipart/20250208/original/pngtree-portrait-of-young-doctor-with-stethoscope-on-blue-background-png-image_20392504.png"),
                ),
                       ),
                      ),
                    ),
                    Column(
                      children: [
                      Text("Dr. Jahanzaib khalid                ",style: TextStyle(fontSize: 20,color: Colors.black),),
                        Text("cardialogist[MBBS,FCPS]                   ",style: TextStyle(fontSize: 16,color: Colors.black),),
                       Text("⏰12.00pm-4.00pm 🌐 New City Clinic",style: TextStyle(fontSize: 16,color: Colors.black),),
                       
                      ],
                    ),
                  ],
                 ),
                 ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 90,
                  width: double.infinity,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                 ),
                 child: FloatingActionButton(onPressed: (){},
                 backgroundColor:Color(0xFFEAF0FA) ,
                 child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                          decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                image: NetworkImage
                ("https://static.vecteezy.com/system/resources/previews/046/680/177/non_2x/an-pakistani-male-doctor-on-isolated-transparent-background-png.png"),
                ),
                       ),
                      ),
                    ),
                    Column(
                      children: [
                      Text("Dr. Shoaib Akhtar                    ",style: TextStyle(fontSize: 20,color: Colors.black),),
                        Text("cardialogist[MBBS,FCPS]                   ",style: TextStyle(fontSize: 16,color: Colors.black),),
                       Text("⏰8.00pm-11.00pm 🌐 New City Clinic",style: TextStyle(fontSize: 16,color: Colors.black),),
                       
                      ],
                    ),
                  ],
                 ),
                 ),
                ),
                  SizedBox(height: 15,),
                 Container(
                  height: 90,
                  width: double.infinity,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                 ),
                 child: FloatingActionButton(onPressed: (){},
                 backgroundColor:Color(0xFFEAF0FA) ,
                 child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                              decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                image: NetworkImage
                ("https://static.vecteezy.com/system/resources/previews/046/680/103/non_2x/an-pakistani-male-doctor-on-isolated-transparent-background-png.png"),
                ),
                       ),
                      ),
                    ),
                    Column(
                      children: [
                      Text("Dr. Abuzar Gafari                   ",style: TextStyle(fontSize: 20,color: Colors.black),),
                        Text("cardialogist[MBBS,FCPS]                   ",style: TextStyle(fontSize: 16,color: Colors.black),),
                       Text("⏰3.00pm-5.00pm 🌐 New City Clinic",style: TextStyle(fontSize: 16,color: Colors.black),),
                       
                      ],
                    ),
                  ],
                 ),
                 ),
                ),
                SizedBox(height: 15,),
                    Container(
                  height: 90,
                  width: double.infinity,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                 ),
                 child: FloatingActionButton(onPressed: (){},
                 backgroundColor:Color(0xFFEAF0FA) ,
                 child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                                decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                image: NetworkImage
                ("https://static.vecteezy.com/system/resources/previews/041/408/858/non_2x/ai-generated-a-smiling-doctor-with-glasses-and-a-white-lab-coat-isolated-on-transparent-background-free-png.png"),
                ),
                       ),
                      ),
                    ),
                    Column(
                      children: [
                      Text("Dr. Mustafa UMAR                  ",style: TextStyle(fontSize: 20,color: Colors.black),),
                        Text("cardialogist[MBBS,FCPS]                   ",style: TextStyle(fontSize: 16,color: Colors.black),),
                       Text("⏰12.00pm-4.00pm 🌐 New City Clinic",style: TextStyle(fontSize: 16,color: Colors.black),),
                       
                      ],
                    ),
                  ],
                 ),
                 ),
                ),
                SizedBox(height: 25,),
                       Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               TextButton(onPressed: (){}, child:Text("Avaiable Doctor",style: TextStyle(fontSize: 16,color: Colors.black),),),
               TextButton(onPressed: (){}, child:Text("See All",style: TextStyle(fontSize: 16,color: Colors.black),),),
                ],
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: WidgetToggle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
WidgetTitel(){
  return Column(
    children: [
   Text("Selected Area",style: TextStyle(fontSize: 16,color: Colors.black),),
   Text("Boston",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
    ],
  );
}

WidgetSpecialist(){
    return Column(
    children: [
   Text("Avaiable",style: TextStyle(fontSize: 18,color: Colors.black),),
   Text("Specialist",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
    ],
  );
}

WidgetSearch(){
  return  Column(
    children: [
        Padding(
          padding: const EdgeInsets.only(right: 180),
          child: Row(
            children: [
              Text("Search  Your",style: TextStyle(fontSize: 16,color: Colors.black),),
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Row(
              children: [
                Text("Specialist",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
    ],
  );
    
}
 WidgetCDFR(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          TextButton(onPressed: (){}, child: Text("Categories",style: TextStyle(fontSize: 17,color: Colors.black),),),
          TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(fontSize: 17,color: Colors.black),),),

          ],
      );
 }
 WidgetAvailable(){
   return  Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          TextButton(onPressed: (){}, child: Text("Available Doctor",style: TextStyle(fontSize: 17,color: Colors.black),),),
          TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(fontSize: 17,color: Colors.black),),),

          ],
      );
 }
  WidgetCDB(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, 
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: FloatingActionButton(onPressed: () {},
                // backgroundColor: Color(0xfff5f8fd),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:
                         NetworkImage("https://static.vecteezy.com/system/resources/previews/043/987/887/non_2x/medicine-3d-icon-png.png")),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Pediatrician",style: TextStyle(fontSize: 11,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: FloatingActionButton(onPressed: () {},
                backgroundColor: Color(0xfff5f8fd),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:
                         NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS27Fxtk8M8gjTJ4uOYAhk_eZUru3Vier782A&s")),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Neurosurge...",style: TextStyle(fontSize: 11,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: FloatingActionButton(onPressed: () {
                
                },
                backgroundColor: Color(0xfff5f8fd),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:
                         NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUmBA4Q2D8fcHTY2czz2hsVP7-WpGgphItT0s9hv5fZA5jq5wVvSxyJSLB8HDFb1OAiZU&usqp=CAU")),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Cardialogist",style: TextStyle(fontSize: 11,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
                  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: FloatingActionButton(onPressed: () {},
                backgroundColor: Color(0xfff5f8fd),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:
                         NetworkImage("https://static.vecteezy.com/system/resources/previews/016/389/995/non_2x/brain-and-mind-research-free-png.png"),),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Psychiatrist",style: TextStyle(fontSize: 11,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: FloatingActionButton(onPressed: () {},
                backgroundColor: Color(0xfff5f8fd),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:
                         NetworkImage("https://static.vecteezy.com/system/resources/previews/029/091/578/non_2x/dental-insurance-teeth-protective-3d-render-icon-png.png")),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Dentist",style: TextStyle(fontSize: 11,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }

  WidgetToggle(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  height: 250,
                  width: 370,
                             decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                             ),
                             child: FloatingActionButton(onPressed: (){},
                             backgroundColor:Color(0xfff5f8fd) ,
                             child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                     Text("Dr. Mustafa UMAR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                     Text("  Neurosurge Specialist",style: TextStyle(fontSize: 17,color: Colors.black),), 
                     SizedBox(height: 10,),
                     Container(
                      height: 30,
                      width: 120,
                     decoration: BoxDecoration(
                      image: DecorationImage(image: 
                      NetworkImage
    ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"), 
                     ),
                     ),
                     ),     
                    
                       SizedBox(height: 20,),
                        Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("8  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                
                          SizedBox(height: 10,),
                        Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("1.08K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                     Container(
                            height: 170,
                             width: 90,
                         decoration: BoxDecoration(
                         image: DecorationImage(
                         fit: BoxFit.cover,
                        image: NetworkImage
                             ("https://static.vecteezy.com/system/resources/previews/041/408/858/non_2x/ai-generated-a-smiling-doctor-with-glasses-and-a-white-lab-coat-isolated-on-transparent-background-free-png.png"),
                        ),
                     borderRadius: BorderRadius.circular(16),
                     ),
                   ),
                ],
                ),
                 ),
                ),
              
              SizedBox(width: 25,),
                     Container(
                                       height: 250,
                                       width: 370,
                                    decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: FloatingActionButton(onPressed: (){},
                                    backgroundColor:Color(0xfff5f8fd) ,
                                    child: Row(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Column(
                                           children: [
                                          Text("Dr. MOMEN ALi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                          Text("  Medicine Specialist",style: TextStyle(fontSize: 17,color: Colors.black),), 
                                          SizedBox(height: 10,),
                                          Container(
                                           height: 30,
                                           width: 120,
                                          decoration: BoxDecoration(
                                           image: DecorationImage(image: 
                                           NetworkImage
  ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),                                       
                                          ),
                                          ),
                                          ),     
                                         
                       SizedBox(height: 20,),
                        Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("5  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                       
                          SizedBox(height: 10,),
                        Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("2.07K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                           ],
                                         ),
                                       ),
                                       SizedBox(width: 30,),
                                          Container(
                            height: 170,
                             width: 90,
                         decoration: BoxDecoration(
                         image: DecorationImage(
                         fit: BoxFit.cover,
                        image: NetworkImage
                     ("https://static.vecteezy.com/system/resources/previews/041/642/113/non_2x/ai-generated-portrait-of-young-doctor-man-happy-smiling-free-png.png"),
                        ),
                                          borderRadius: BorderRadius.circular(16),
                                          ),
                                        ),
                                     ],
                                    ),
                                    ),
                                     ),
                     
              SizedBox(width: 25,),
                       Container(
                height: 250,
                width: 370,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
             ),
             child: FloatingActionButton(onPressed: (){},
             backgroundColor:Color(0xfff5f8fd) ,
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                   Text("Dr. AMNA Khan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                   Text("  HEART Specialist",style: TextStyle(fontSize: 17,color: Colors.black),), 
                   SizedBox(height: 10,),
                   Container(
                    height: 30,
                    width: 120,
                   decoration: BoxDecoration(
                    image: DecorationImage(image: 
                    NetworkImage
  ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),            
                   ),
                   ),
                   ),     
                  
                     SizedBox(height: 20,),
                      Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                       Text("5  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

                        SizedBox(height: 10,),
                      Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                       Text("2.7K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
                SizedBox(width: 30,),
                   Container(
                          height: 170,
                           width: 90,
                       decoration: BoxDecoration(
                       image: DecorationImage(
                       fit: BoxFit.cover,
                      image: NetworkImage
            ("https://static.vecteezy.com/system/resources/thumbnails/046/680/105/small/an-pakistani-female-doctor-on-isolated-transparent-background-png.png"),
                     ),
                   borderRadius: BorderRadius.circular(16),
                   ),
                 ),
              ],
             ),
             ),
              ),
              SizedBox(width: 25,),
                       Container(
                height: 250,
                width: 370,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
             ),
             child: FloatingActionButton(onPressed: (){},
             backgroundColor:Color(0xfff5f8fd) ,
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                   Text("Dr. Rabea Khalid",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                   Text("  Dentist Specialist",style: TextStyle(fontSize: 17,color: Colors.black),), 
                   SizedBox(height: 10,),
                   Container(
                    height: 30,
                    width: 170,
                   decoration: BoxDecoration(
                    image: DecorationImage(image: 
                    NetworkImage
  ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),  
                   ),
                   ),
                   ),     
                  
                     SizedBox(height: 20,),
                      Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                       Text("10  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

                        SizedBox(height: 10,),
                      Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                       Text("7.08K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              
                   Container(
                          height: 170,
                           width: 90,
                       decoration: BoxDecoration(
                       image: DecorationImage(
                       fit: BoxFit.cover,
                      image: NetworkImage
             ("https://static.vecteezy.com/system/resources/thumbnails/043/372/547/small/doctor-woman-with-stethoscope-keeping-the-arms-crossed-on-isolated-transparent-background-png.png"),
                      ),
                   borderRadius: BorderRadius.circular(16),
                   ),
                 ),
              ],
             ),
             ),
              ),
      
            ],
          ),
        ],
      ),
    );
  }


 widgetDRName(){
  return Column(
    children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text("Find Your",style: TextStyle(fontSize: 20,color: Colors.black),),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Specialist",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
    ],
  );
 }


 WidgetBrandTag(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Made By",style: TextStyle(fontSize: 17,color: Colors.black),),
     Text("  Rana Jahanzaib",style: TextStyle(fontSize: 17,color: Colors.blue),),
    ],
  );
 }

 WidgetBrandRole(){
  return 
      SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                             height: 80,
                            width: 150,
                           decoration: BoxDecoration(
                           ),
                             child: FloatingActionButton(onPressed: (){},
                                        //  backgroundColor: Colors.black87,
                             child: Container(
                             height: 80,
                            width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2zS1XE62lGf5JbVB7eOIL4lZwKWwmTvshBiWxzA5dqkYKVfbt4z_qVSmy2GYH6icnWc&usqp=CAU"),),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text("Street Art",style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                             ),
                          ),
                          ),
                          SizedBox(width: 10,),
                            Container(
                             height: 80,
                            width: 150,
                           decoration: BoxDecoration(
                           ),
                             child: FloatingActionButton(onPressed: (){},
                                        //  backgroundColor: Colors.black87,
                             child: Container(
                             height: 80,
                            width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
                            ("https://picsum.photos/id/1015/150/80"),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text("Nature",style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                             ),
                             ),
                            ), 
                                          SizedBox(width: 10,),
                            Container(
                             height: 80,
                            width: 150,
                           decoration: BoxDecoration(
                           ),
                             child: FloatingActionButton(onPressed: (){},
                                        //  backgroundColor: Colors.black87,
                             child: Container(
                             height: 80,
                            width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
                            // ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZcLf37E3ybOZChgxALSTerUgUMix7XrSXsMaIo0m2Xd89w7D1qGs7GKbW91pk1jamrsk&usqp=CAU"),
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqiZ6sQAgTWzd52R_xyjA5UPoSwEjHeQR4j6G5evF8NgkwPZvSnsZgQl-0BaIjgfGwSUw&usqp=CAU"),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text("Cars",style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                             ),
                             ),
                            ), 
                                          SizedBox(width: 10,),
                            Container(
                             height: 80,
                            width: 150,
                           decoration: BoxDecoration(
                           ),
                             child: FloatingActionButton(onPressed: (){},
                                        //  backgroundColor: Colors.black87,
                             child: Container(
                             height: 80,
                            width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
                            // ("https://png.pngtree.com/thumb_back/fh260/background/20240218/pngtree-motorbike-race-racing-image_15627790.jpg"),
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaucG6UdruPQtTYNqoFC_pqnTN0o7kU1D8owhPd_0A7CaHaNvJiLE-8ICw16zSTko9Agk&usqp=CAU"),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text("Bikes",style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                             ),
                             ),
                            ), 
                                          SizedBox(width: 10,),
                            Container(
                             height: 80,
                            width: 150,
                           decoration: BoxDecoration(
                           ),
                             child: FloatingActionButton(onPressed: (){},
                                        //  backgroundColor: Colors.black87,
                             child: Container(
                             height: 80,
                            width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
      ("https://static.vecteezy.com/system/resources/thumbnails/048/830/940/small_2x/modern-laptop-displaying-code-in-neon-light-reflecting-on-surface-photo.jpeg"),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text("CODING",style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                             ),
                             ),
                            ), 
                             
                        ],
                      ),
                    );
 }

 WidgetLIstview(){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Color(0xffd299c2),Color(0xfffef9d7),
      ],
      begin: FractionalOffset(0.0, 1.0),
      end: FractionalOffset(1.0, 0.0)
      ),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage
    ("https://images.unsplash.com/photo-1522255272218-7ac5249be344?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bHV4dXJ5fGVufDB8fDB8fHww"),),
                borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
           SizedBox(width: 25,),
                Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/id/1005/500/800"),),
                 borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
            ],
          ),
        ),
        SizedBox(height: 15,),
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage
    ("https://picsum.photos/id/1036/400/800"),),
     borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
           
           SizedBox(width: 25,),
               Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/id/1025/400/800"),),
                 borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
             
            ],
          ),
        ),
        SizedBox(height: 15,),
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/id/1026/400/800"),),
                 borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
           SizedBox(width: 25,),
             Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage
    ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4xNjgDvAze152sy-Q0vhNTXOmWsaA2ap281ZFFyuRTAGtq_WCSP6j0FZYqIGExtjjq3U&usqp=CAU"),),
                      borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
             
            ],
          ),
        ),
        SizedBox(height: 15,),
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqiZ6sQAgTWzd52R_xyjA5UPoSwEjHeQR4j6G5evF8NgkwPZvSnsZgQl-0BaIjgfGwSUw&usqp=CAU"),),
                 borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
             
           SizedBox(width: 25,),
               Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/id/1003/500/800"),),
                 borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
             
            ],
          ),
        ),
        SizedBox(height: 15,),
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/id/1011/400/800"),),
                 borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
             
           SizedBox(width: 25,),
             Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://images.pexels.com/photos/18145576/pexels-photo-18145576/free-photo-of-sheep-on-a-farm-with-a-golden-sunset.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),),
                borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
              
            ],
          ),
        ),
            SizedBox(height: 15,),
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHJP_JtAzjMqKQwzpsG-RyFBY8m5Z8m3dPjvIk-kU7oqPoDNaaCO7A2zxtx5mt4gGwA6c&usqp=CAU"),),
                 borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
             
           SizedBox(width: 25,),
             Container(
                  height: 300,
                  width: 200,
               decoration: BoxDecoration(
               ),
               child: FloatingActionButton(onPressed: (){},
               elevation: 7,
               backgroundColor: Colors.amber,
               child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnYA5ib5C925YHrAHJHlSDcE17XhX77fhQNxqVRfk3y6q0nWzRruApzuLAXqy1oMGRL_E&usqp=CAU"),),
                borderRadius: BorderRadius.circular(16),
                ),
               ),
               ),
                ),
              
            ],
          ),
        ),
      ],
    ),
  );
 }
  widgetBrandName(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text("WALLPAPER",style: TextStyle(fontSize: 20,color: Colors.black),),
          Text("HUB",style: TextStyle(fontSize: 21,color: Colors.blue),),
        ],
      ),
    ],
  );
 }