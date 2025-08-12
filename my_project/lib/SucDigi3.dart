import 'package:flutter/material.dart';
import 'package:my_project/SucDigi1.dart';
// import 'package:flutter/cupertino.dart';

void main(){
    runApp(ExperiApp());
}
class ExperiApp extends StatefulWidget {
  const ExperiApp({super.key});

  @override
  State<ExperiApp> createState() => _ExperiAppState();
}

class _ExperiAppState extends State<ExperiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        home: Sucdigi1(),
    );
  }
}
class MyExperi extends StatelessWidget {
  const MyExperi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: 
           Text('SUCCESS DIGITAL ',style: TextStyle(color: Colors.white,fontSize: 20),
          ),
        
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: SingleChildScrollView(
          child: Column(
              children: [
                  Container(
                      height: 230,
                     width: 550,
                    //  color: Colors.black,
                     child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                               Container(
                                  height: 200,
                                  width: 200,
                                  
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                    image: NetworkImage
                                   ("https://png.pngtree.com/png-vector/20221101/ourmid/pngtree-house-property-logo-real-estate-design-buildings-clipart-png-image_6405730.png"),
                                    ),
                                  ),
                                ),
                             
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Card(
                                        // shape: Border.all(
                                        //   color: Colors.lightGreen,
                                          
                                        // ),
                                        shadowColor: Colors.redAccent,
                                        elevation: 12,
                                      child: Text('SUCCESS DIGITAL',style: TextStyle(fontSize: 25,color: Colors.deepPurple,fontWeight: FontWeight.bold),)),
                                      Text('UNLOCKING',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                      Text('REAL ESTATE',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                      Text('SUCCESS..!!',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  
                                ), 
                           
                            ],
                          ),
                          
                          
                        ),
                      ],
                     ),
                  ),
                     Padding(padding: EdgeInsets.only(left: 20)),
                      Row(
                      children: [
                        Container(
                          height: 290,
                          width: 180,
                         decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight:Radius.circular(10)),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                            children: [
                              Container(
                                height: 140,
                                width: 140,
                               decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage
                                      ('https://png.pngtree.com/png-vector/20230414/ourmid/pngtree-house-logo-real-estate-housing-society-vector-png-image_6705949.png'),
                                ),
                               ),
                              ),
                          Column(
                            children: [
                                  Row(
                                children: [
                                  Text('BUY',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),)
                                ],
                              ),
                               Text('(Buy your own House)'),
                               SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('VERIFICATION..!',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 7,),
                              ElevatedButton(onPressed: (){}, 
                                child: Text('view More',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                            ],
                           ),
                         ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 120)),
                            Container(
                          height: 270,
                          width: 180,
                         decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight:Radius.circular(10))
                         ),
                         child: Column(
                          children: [
                            Container(
                             height: 140,
                             width: 140,
                             decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage
                                ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi1gZrLzdsWs7JuFcPBGDN_XTDVGIx8pELw7006O9B_5xB60n2T7hN__QSrs9Q-Ojb57U&usqp=CAU'),
                              ),
                             ),
                            ),
                            Column(
                              children: [
                                   Row(
                                    children: [
                                      Padding(padding: EdgeInsets.all(7.0)),
                                   Text('SELL',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),),
                                  ],
                                  ),
                                 Text('(Price Your Home)'),
                                   Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('VERIFICATION..!',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                              ElevatedButton(onPressed: (){}, 
                                child: Text('view More',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                              ),
                              ],
                            ),
                          ],
                         ),
                       ),
                      ],
                     ),
          
               
                      Padding(padding: EdgeInsets.all(8.0)),       
                   Row(
                    children: [
                      Container(
                        height: 270,
                        width: 180,
                       decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight:Radius.circular(10))
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: 140,
                             decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage
                 ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF6BEjAFCWRBB_q9nNPe3tvZp8ySxqLyQFbw&s'),
                              ),
                             ),
                            ),
                        Column(
                          children: [
                                Row(
                              children: [
                                Text('RENT',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),),
                              ],
                            ),
                             Text('(Browse Listing)'),
                             SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('VERIFICATION..!',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 7,),
                            ElevatedButton(onPressed: (){}, 
                              child: Text('view More',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                          ],
                         ),
                       ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 120)),
                          Container(
                        height: 270,
                        width: 180,
                       decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight:Radius.circular(10))
                       ),
                       child: Column(
                        children: [
                          Container(
                           height: 140,
                           width: 140,
                           decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage
    ('https://png.pngtree.com/png-vector/20240917/ourmid/pngtree-property-manager-of-real-state-house-png-image_13845754.png'),
                            ),
                           ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                   children: [
                                 Text(' REALESTATE IDEAS',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold,),),
                                 ],
                                ),
                              ),
                             Column(
                              children: [
                                Text('(To be successful ideas'),
                                Text('For Realestate Business)')
                              ],
                             ),
                              SizedBox(height: 7,),
                            ElevatedButton(onPressed: (){}, 
                              child: Text('view More',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                            ),
                            ],
                          ),
                        ],
                       ),
                     ),
                    ],
                   ),

                     Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage('https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3B4MTE3OTM5My1pbWFnZS1rd3Z5MG94eC5qcGc.jpg'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                         Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://static.vecteezy.com/system/resources/thumbnails/040/708/426/small_2x/ai-generated-beautiful-home-exterior-in-evening-with-glowing-interior-lights-and-landscaping-photo.jpg'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxVWY_n1Q9_IGXRHWYchBtPr-HgMhj-tOdeQ&s'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIo0oEeXjQg3_Fs_PHlmXZef-Xfcp9R3EOtHJncVpg6kmyPYtvTvvXs76mA9at4G440EI&usqp=CAU'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQCYUYRM7qn0LDbUc1pN9P19QtSXZ-43XCtkhWpo48JxqnqlopChLT0glVS3jHdN2YWc8&usqp=CAU'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSINmErC_SQVcHbyTiiixrUQKe0FT1FmgHr6gZuhZDoyj2yy-S1HfeGQCalmcg4L6vET9c&usqp=CAU'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
            ('https://t4.ftcdn.net/jpg/08/45/63/81/360_F_845638136_AkAdz1zb3ts0QGFR5GgMlBI2Ehm1qkvu.jpg'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt3ekGo7abnlo-ralgGugHgj5k84P1NQOJc1mYPjj7la9nsaesgixyUxciQ6PEfIDIxaY&usqp=CAU'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://png.pngtree.com/png-vector/20230903/ourmid/pngtree-modern-house-flat-style-png-image_9961227.png'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://mir-s3-cdn-cf.behance.net/projects/404/b31a6287012925.5dda7519093e9.png'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                            Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 200,
                      width: 400,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                           image: DecorationImage(
                              fit: BoxFit.cover,
                            image: NetworkImage
              ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAhybeTpbJ3aAhDlI0wbCcRfHzsdwziht4YA&s'),
                            ),
                        border: Border.all(
                           color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 270),
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                          //  Text('RS 2,0000000',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 100,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: (){}, 
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('SMS'),
                                  ],
                                ),
                              ),
                              
                              ),
                               SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                     child:Row(
                                      children: [
                                        Icon(Icons.phone,),
                                        Text('call'),
                                      ],
                                     ),
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              
                            ],
                          ),
                        ],
                      ),
                      
                  ),
                
                     Padding(padding: EdgeInsets.all(8.0)),
                   Container(
                      height: 150,
                      color: Colors.blueAccent,
                  ),
              ],
          ),
          ),
         ),
    );
  }
}