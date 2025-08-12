import 'package:flutter/material.dart';
import 'package:my_project/APBFruits.dart';
import 'package:my_project/APBvegMeat.dart';

void main(){
    runApp(WheelApp());
}
class WheelApp extends StatelessWidget {
  const WheelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WheelScreen(),
    );
  }
}
class WheelScreen extends StatefulWidget {
  const WheelScreen({super.key});

  @override
  State<WheelScreen> createState() => _WheelScreenState();
}

class _WheelScreenState extends State<WheelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
       child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("PURE BASKIT",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            color: Colors.red,
                            blurRadius: 5,
                            offset: Offset(3, 3),
                          ),
                        ],
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("UNLIMITED FRESHNESS DELIVERED ",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 5,
                              offset: Offset(3, 3),
                            ),
                          ],),),
                        Text("WITH EVERY BASKIT..!!",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 5,
                              offset: Offset(3, 3),
                            ),
                          ],),),
                          SizedBox(height: 15,),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage
                              ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZK9Zy4tshtLeFStLFw7R_aFP2r_GCaxkwwg&s"),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                           Text("PURE BASKIT",style: TextStyle(fontSize: 55,color: Colors.white,fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 5,
                              offset: Offset(3, 3),
                            ),
                          ],),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
               Text("WHY PURE BASKIT??",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold,
              shadows: [
               BoxShadow(
              color: Colors.red,
               blurRadius: 5,
               offset: Offset(3, 3),
              ),
           ],),),
           SizedBox(height: 15,),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
              children: [
                  SizedBox(width: 10,),
                Container(
                  height: 270,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.green,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image:NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE4RoN7wi-DkQSRsU3XudOVmZTDR0WtawymXGXICMDTASY0bollHhHhK_4YFiRoRQn_t8&usqp=CAU"), 
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Column(
                        children: [
                         Text('FRUITS',style:TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Fruits are rich in essential vitamins,overall health and immunity.They improve skin health,Heart Disease and diabetes..!!'),
                        ),
                       TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return Fruits();
                        }));
                       }, child: Text('View Product-->',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),),
                        ],
                      ),
                    ],
                  ),
                ),
         
               SizedBox(width: 10,),
               Container(
                  height: 270,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.green,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image:NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/022/214/798/small_2x/basket-full-of-vegetables-vector.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Column(
                        children: [
                         Text('VEGITABELS&MEAT',style:TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Vegitabels & Meat are rich in essential vitamins,overall health and immunity.They improve skin health,Heart Disease and diabetes..!!'),
                        ),
                       TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return VEGMEAT();
                        }));
                       }, child: Text('View Product-->',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 270,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.green,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(image:NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOzkG7xhGya6DdPbBA96dglTzrZZwS7yLZzeDT0-it7LdKuVUKpVomM6N1Pawx1UJWCoY&usqp=CAU"), 
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Column(
                        children: [
                         Text('GROCERY',style:TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Groceries Provide the daily essentials Needed for balanced nutrions,Healthy Living and supporting meal planning..!!'),
                        ),
                       TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return GROCERY();
                        }));
                       }, child: Text('View Product-->',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
             ),
           ),
             SizedBox(height: 25,),
                   Padding(
                   padding: const EdgeInsets.all(8.0),
                  child: Container(
                  height: 500,
                 width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.green,
               borderRadius: BorderRadius.circular(15),
           ),
           child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("HOW TO BUY??",
                 style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,
                 shadows: [
                 BoxShadow(
                 color: Colors.red,
                 blurRadius: 5,
                 offset: Offset(3, 3),
                             ),
                            ],),),
              ),
            SizedBox(height: 10,),
               Text("FRUITS, VEGITABLES AND GROCERY??", style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,
               shadows: [
               BoxShadow(
               color: Colors.red,
               blurRadius: 5,
               offset: Offset(3, 3),
             ),
            ],),),
            SizedBox(height: 15,),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://thumb.ac-illust.com/ba/ba10e0b2f64a0f486c47d1d8e8e853c9_t.jpeg"),),
              ),
            ),  
            SizedBox(height: 25,), 
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.white,
                  child: Text("FARMORA",style: TextStyle(fontSize: 10,color: Colors.green),),
                  ),
                  SizedBox(width: 20,),
                  FloatingActionButton(onPressed: (){},
                   backgroundColor: Colors.white,
                  child:Icon(Icons.arrow_downward_rounded,size: 50,color: Colors.green),
                  ),
                   SizedBox(width: 20,),
                  FloatingActionButton(onPressed: (){},
                   backgroundColor: Colors.white,
                  child:Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage
                      ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzo-CigCEh4SQFTXP8Zlf7279abAIwzIF55w&s"),
                      ),
                    ),
                  ),
                  ),
                   SizedBox(width: 20,),
                  FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.white,
                  child:Icon(Icons.qr_code_2_rounded,size: 50,color: Colors.green),
                  ),
                ],
              ),
            ), 
              SizedBox(height: 20,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Step 1",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 25,),
                Text("Step 2",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 25,),
                Text("Step 3",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 35,),
                Text("Step 4",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
            ), 
         SizedBox(height: 10,),
         Center(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Column(
                children: [
                  Text("Download the app",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
                  SizedBox(height: 3,),
                  Text("and create your profile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
                ],
               ),
               SizedBox(width: 10,),
               Column(
                children: [
               Text("chose your",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
              SizedBox(height: 3,),
              Text("Membership plan",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
                ],
               ),
                SizedBox(width: 10,),
               Column(
                children: [
              Text("Select your",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
              SizedBox(height: 3,),
              Text("Grocery in the App",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
                ],
               ),
                   SizedBox(width: 10,),
                   Column(
            children: [
                Text("Scane your Q-R code",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
              SizedBox(height: 3,),
              Text("& get your Fresh Grocery",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
            ],
                   ),
             ],
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



class GROCERY extends StatefulWidget {
  const GROCERY({super.key});

  @override
  State<GROCERY> createState() => _GROCERYState();
}

class _GROCERYState extends State<GROCERY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("GROCERY ITEMS",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            decoration: BoxDecoration(
            ),
           ),
         ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                     return SUMVEG();
                      }));
                    },
                    backgroundColor: Colors.green,
                    child: Column(
                      children: [
                       Container(
                        height: 100,
                        width: 100,
                       decoration: BoxDecoration(
                        image: DecorationImage(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBhOqAjPWRKhDM3Rx5Wd-MrVyG-NKb15Y8Qw&s"),),
                       ),
                    
                       ), 
                       SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(" DAIRY PRODUCTS...!! ",
                                   style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold,),),
                                ),
                      ],
                    ),
                    ),
                  ),
                SizedBox(width: 25,),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                      return WINVEG();
                      }));
                    },
                    backgroundColor: Colors.green,
                    child: Column(
                      children: [
                       Container(
                        height: 100,
                        width: 100,
                       decoration: BoxDecoration(
                        image: DecorationImage(image:NetworkImage
                        ("https://static.vecteezy.com/system/resources/thumbnails/022/214/798/small_2x/basket-full-of-vegetables-vector.jpg"),),
                       ),
                    
                       ), 
                       SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("GRAIND & BREAD...!! ",
                                   style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold,),),
                        ),
                         
                      ],
                    ),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ), 
              SizedBox(height: 30,),
               Row(
                children: [
                     Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return MIXEDVEG();
                      }));
                    },
                    backgroundColor: Colors.green,
                    child: Column(
                      children: [
                       Container(
                        height: 100,
                        width: 100,
                       decoration: BoxDecoration(
                        image: DecorationImage(image:NetworkImage
                        ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCJCdPI-NS2KtR_6VD0JnCp9MqYxPMR32a1A&s"),),
                       ),
                    
                       ), 
                       SizedBox(height: 15,),
                            Padding(
                           padding: const EdgeInsets.all(8.0),
                          child: Text("CANNED & JARRED GOODS...!! ",
                         style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold,),),
                      ),
                         
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 25,),
                     Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return MEAT();
                      }));
                    },
                    backgroundColor: Colors.green,
                    child: Column(
                      children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                          height: 100,
                          width: 100,
                         decoration: BoxDecoration(
                          image: DecorationImage(image:NetworkImage
                          ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUG86c3OreNSbksdkS8C7tHz8Ahf0MmdZEzVb_1o2IXfJtTiD_qQldCwXCkMa7zmBNpa8&usqp=CAU"),),
                         ),
                                             
                         ),
                       ), 
                       SizedBox(height: 15,),
                            Padding(
                           padding: const EdgeInsets.all(8.0),
                          child: Text(" OILS & CONDIMENTS...!! ",
                         style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold,),),
                      ),
                         
                      ],
                    ),
                    ),
                  ),
                ],
               ),
                 SizedBox(height: 25,),
               Row(
                children: [
                     Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return MEAT();
                      }));
                    },
                    backgroundColor: Colors.green,
                    child: Column(
                      children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                          height: 100,
                          width: 100,
                         decoration: BoxDecoration(
                          image: DecorationImage(image:NetworkImage
                          ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUG86c3OreNSbksdkS8C7tHz8Ahf0MmdZEzVb_1o2IXfJtTiD_qQldCwXCkMa7zmBNpa8&usqp=CAU"),),
                         ),
                                             
                         ),
                       ), 
                       SizedBox(height: 15,),
                            Padding(
                           padding: const EdgeInsets.all(8.0),
                          child: Text(" SPICES & SEASONINGS...!! ",
                         style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold,),),
                      ),
                         
                      ],
                    ),
                    ),
                  ),
                      SizedBox(width: 25,),
                     Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return MEAT();
                      }));
                    },
                    backgroundColor: Colors.green,
                    child: Column(
                      children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                          height: 100,
                          width: 100,
                         decoration: BoxDecoration(
                          image: DecorationImage(image:NetworkImage
                          ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUG86c3OreNSbksdkS8C7tHz8Ahf0MmdZEzVb_1o2IXfJtTiD_qQldCwXCkMa7zmBNpa8&usqp=CAU"),),
                         ),
                                             
                         ),
                       ), 
                       SizedBox(height: 15,),
                            Padding(
                           padding: const EdgeInsets.all(8.0),
                          child: Text(" BEVERAGES...!! ",
                         style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold,),),
                      ),
                         
                      ],
                    ),
                    ),
                  ),
                ],
               ),
                 SizedBox(height: 25,),
               Row(
                children: [
                     Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return MEAT();
                      }));
                    },
                    backgroundColor: Colors.green,
                    child: Column(
                      children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                          height: 100,
                          width: 100,
                         decoration: BoxDecoration(
                          image: DecorationImage(image:NetworkImage
                          ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUG86c3OreNSbksdkS8C7tHz8Ahf0MmdZEzVb_1o2IXfJtTiD_qQldCwXCkMa7zmBNpa8&usqp=CAU"),),
                         ),
                                             
                         ),
                       ), 
                       SizedBox(height: 15,),
                            Padding(
                           padding: const EdgeInsets.all(8.0),
                          child: Text(" FROZEN FOODS...!! ",
                         style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold,),),
                      ),
                         
                      ],
                    ),
                    ),
                  ),
                      SizedBox(width: 25,),
                     Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return MEAT();
                      }));
                    },
                    backgroundColor: Colors.green,
                    child: Column(
                      children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                          height: 100,
                          width: 100,
                         decoration: BoxDecoration(
                          image: DecorationImage(image:NetworkImage
                          ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUG86c3OreNSbksdkS8C7tHz8Ahf0MmdZEzVb_1o2IXfJtTiD_qQldCwXCkMa7zmBNpa8&usqp=CAU"),),
                         ),
                                             
                         ),
                       ), 
                       SizedBox(height: 15,),
                            Padding(
                           padding: const EdgeInsets.all(8.0),
                          child: Text(" HOUSEHOLD ITEMS...!! ",
                         style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold,),),
                      ),
                         
                      ],
                    ),
                    ),
                  ),
                ],
               ),
              ],
              ),
          ),
              SizedBox(height: 25,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text("UNLIMITED FRESHNESS DELIVERED ",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,
                            shadows: [
                              BoxShadow(
                                color: Colors.red,
                                blurRadius: 5,
                                offset: Offset(3, 3),
                              ),
                            ],),),
                          Text("WITH EVERY BASKIT..!!",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,
                            shadows: [
                              BoxShadow(
                                color: Colors.red,
                                blurRadius: 5,
                                offset: Offset(3, 3),
                              ),
                            ],),),
                            SizedBox(height: 10,),
                            Text("PURE BASKIT",style: TextStyle(fontSize: 55,color: Colors.white,fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 5,
                              offset: Offset(3, 3),
                            ),
                          ],),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}