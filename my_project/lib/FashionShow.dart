import 'dart:ui';

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
    return Scaffold(
         backgroundColor: Color(0xFFEAF0FA),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
       title: Text("Style Scape",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.purple),),
       centerTitle: true,
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30.0,color: Colors.black,),),
       ],
      ),
       body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              title: Text("Fashion Week",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.purple),),
              subtitle: Text("2025 Fashion Show is Paris",style: TextStyle(color: Colors.purple),),
            ),
            SizedBox(height: 20,),
             ListTile(
              title:   Text("Explore",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.purple),),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.sort,color: Colors.purple),),
             ),
             SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){}, child:Text("Recommmended",style: TextStyle(fontSize: 18,color: Colors.purple),)),
                TextButton(onPressed: (){}, child:Text("New Models",style: TextStyle(fontSize: 18,color: Colors.black),)),
                TextButton(onPressed: (){}, child:Text("2024 Show",style: TextStyle(fontSize: 18,color: Colors.black),)),
              ],
             ),
             SizedBox(height: 10,),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                    InkWell(
                    child: Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(         
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                        ],
                        image: DecorationImage(image: NetworkImage
                ("https://png.pngtree.com/png-clipart/20230806/original/pngtree-summer-retro-girl-illustration-png-image_9443495.png"),),
                        borderRadius: BorderRadius.circular(20),
                           border: Border.all(
                           color: Colors.purple,
                           width: 10,
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return FashionClick();
                      }));
                    },
                  ), 
                     SizedBox(width: 10,),
                      Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(         
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                        ],
                          image: DecorationImage(image: NetworkImage
                ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAtPUnX3ZZ6n5bchqVu8iasx_sehnEeKbYZoJNY2s7vpns73qE3YBKSbhG6B8A_Si4VB4&usqp=CAU")),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                           color: Colors.purple,
                           width: 10,
                        ),
                      ),
                    ),
              
                        SizedBox(width: 10,),
                      Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(         
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                        ],
                          image: DecorationImage(image: NetworkImage
      ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSorOfpGBeJtXLc_C4OCxheaAJdHoO-dCrZfGNW5xzMLVh8euusk_whs1HE2iH8xtQO6_g&usqp=CAU")),
                        borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                           color: Colors.purple,
                           width: 10,
                        ),
                      ),
                    ),

                        SizedBox(width: 10,),
                   Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(         
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                        ],
                          image: DecorationImage(image: NetworkImage
                    ("https://png.pngtree.com/png-vector/20240314/ourmid/pngtree-superior-los-angeles-simple-vintage-fashion-png-image_11952598.png")),
                        borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                           color: Colors.purple,
                           width: 10,
                        ),
                      ),
                    ),

                         SizedBox(width: 10,),
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(         
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                        ],
                          image: DecorationImage(image: NetworkImage
                    ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEyKr7nJMoyye9Q7H5nCWFrJH6MBGAdRj3Vig5ryyTsOb9DnYhAhcZ12RS0erEPo1Q2Mg&usqp=CAU")),
                        borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                           color: Colors.purple,
                           width: 10,
                        ),
                      ),
                    ),
                    
                 
                ],
              ),
             ),
            SizedBox(height: 20,),
            InkWell(
            child: Container(
              height: 260,
              width: 320,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
            image: NetworkImage
            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTee9cbeX8MG2R7RliiB9ub0zwc0aotwA2qHiJCrz8u6KR-HjsOx6RlhKorzSsK4R-aEPA&usqp=CAU")),
                borderRadius: BorderRadius.circular(20),
                   border: Border.all(
                  color: Colors.purple,
                  width: 10,
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

class FashionClick extends StatefulWidget {
  const FashionClick({super.key});

  @override
  State<FashionClick> createState() => _FashionClickState();
}

class _FashionClickState extends State<FashionClick> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height:566,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple,
                image: DecorationImage(
                  fit: BoxFit.cover,
              image: NetworkImage
    //  ("https://png.pngtree.com/background/20230316/original/pngtree-beautiful-fashion-woman-in-purple-long-dress-vector-picture-image_2143398.jpg"),
    ("https://png.pngtree.com/png-vector/20240314/ourmid/pngtree-superior-los-angeles-simple-vintage-fashion-png-image_11952598.png"),
                ),
              ),
              child: Row(
                children: [
            
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                    children: [
                   IconButton(onPressed: () {
                    Navigator.pop(context);
                   },icon: Icon(Icons.arrow_back_ios),
                   ),
                   SizedBox(height: 10,),
                   Icon(Icons.comment),
                   Text("123"),
                   SizedBox(height: 10,),
                   Icon(Icons.favorite_border_outlined),
                   Text("1238"),
                   SizedBox(height: 10,),
                   Icon(Icons.watch_later_outlined),
                   Text("18"),
                      SizedBox(height:150,),
               
                    ],
                   ),
                 ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   SizedBox(height: 135,),
                   Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(filter: ImageFilter.blur(
                    sigmaX: 25,
                    sigmaY: 25,
                    ),
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                      ),
                        child: Column(
                          children: [
                           Text("Trisha",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                           Text("Loren",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),

                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("Trisha Loren garnered attention when she appeared alongside Shreyas Iyer at Team,Paris's Fashion  celebrations, dressed in matching outfits. Her presence quickly became atrending topic among cricket enthusiasts",
                             style: TextStyle(color: Colors.white,fontSize: 10),
                             ),
                           ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Follow +",style: TextStyle(fontSize: 15,color: Colors.white)),
                              SizedBox(
                                height: 50,
                                width: 120,
                                child: ElevatedButton(onPressed: (){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("SubScribed your channel"),),
                                );
                                }, 
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(12,),topLeft: Radius.circular(12),bottomRight:Radius.circular(12), ),
                                  ),
                                ),
                                child: Text("Subscribe",style: TextStyle(fontSize: 15,color: Colors.white))),
                              ),
                            ],
                           ),
                          ],
                        ),

                    ),
                    ),
                  ),
                   ),
                  ],
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