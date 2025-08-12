import 'package:flutter/material.dart';
void main(){
  runApp(VEGMEATApp());
}
class VEGMEATApp extends StatelessWidget {
  const VEGMEATApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: VEGMEAT(),
    );
  }
}


class VEGMEAT extends StatefulWidget {
  const VEGMEAT({super.key});

  @override
  State<VEGMEAT> createState() => _VEGMEATState();
}

class _VEGMEATState extends State<VEGMEAT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
        title: Text("VEG & MEAT",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
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
                                  child: Text(" FRESH SUMMER VEGITABLES...!! ",
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
                                  child: Text(" FRESH WINTER VEGITABLES...!! ",
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
                          child: Text(" FRESH MIXED VEGITABLES...!! ",
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
                          child: Text(" FRESH Meat & Beaf...!! ",
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



class SUMVEG extends StatefulWidget {
  const SUMVEG({super.key});

  @override
  State<SUMVEG> createState() => _SUMVEGState();
}

class _SUMVEGState extends State<SUMVEG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("SUMMER VEGITABLES",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
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
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/028/831/076/non_2x/fresh-green-spinach-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("SPINCH",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/026/721/015/non_2x/halloween-pumpkin-sticker-style-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("PUMPKIN",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/053/459/064/non_2x/three-green-bottle-gourd-on-a-transparent-background-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("BOTTLE GOURD",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/010/987/461/small_2x/bitter-melon-bitter-gourd-on-white-background-with-clipping-path-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("BITTER GOURD",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/052/342/526/non_2x/fresh-ridge-gourd-vegetable-with-slices-on-transparent-background-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("RIDGE GOURD",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage 
          ("https://static.vecteezy.com/system/resources/thumbnails/050/764/581/small/cilantro-cilantro-herb-top-view-green-cilantro-vegetable-flat-lay-isolated-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("METHI",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/057/754/810/non_2x/a-cauliflower-transparent-background-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("CAULIFLOWER",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/055/451/217/non_2x/taro-root-with-purple-flesh-and-skin-isolated-against-a-transparent-background-taro-root-isolated-on-background-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("TARO ROOT",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
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
         ),
        ],
      ),
      ),
    );
  }
}


class WINVEG extends StatefulWidget {
  const WINVEG({super.key});

  @override
  State<WINVEG> createState() => _WINVEGState();
}

class _WINVEGState extends State<WINVEG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
        title: Text("WINTER VEGITABLES",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
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
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: FloatingActionButton(onPressed: (){},
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image:NetworkImage
                 ("https://static.vecteezy.com/system/resources/thumbnails/041/320/581/small_2x/front-view-of-beautiful-orange-carrots-with-slices-in-stack-isolated-with-clipping-path-and-shadow-in-file-format-png.png") ),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text("CARROTS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                            Text("RS.200(1KG)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                              Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Center(
                              child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          ],
                        ),
                        ),
                      ),
                    ),
              SizedBox(width: 7,),
               Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: FloatingActionButton(onPressed: (){},
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image:NetworkImage
 ("https://static.vecteezy.com/system/resources/previews/038/280/530/non_2x/ai-generated-fresh-and-beautiful-turnip-isolated-on-transparent-background-free-png.png") ),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text("TURNIPS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                            Text("RS.200(1KG)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                              Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Center(
                              child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          ],
                        ),
                        ),
                      ),
                      SizedBox(width: 13,),
                Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: FloatingActionButton(onPressed: (){},
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image:NetworkImage
 ("https://static.vecteezy.com/system/resources/previews/026/912/071/non_2x/cabbage-clipart-generative-ai-png.png"), ),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text("CABBAGE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                            Text("RS.200(1KG)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                              Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Center(
                              child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          ],
                        ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                          height: 210,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: FloatingActionButton(onPressed: (){},
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:NetworkImage
                                 ("https://static.vecteezy.com/system/resources/previews/057/754/810/non_2x/a-cauliflower-transparent-background-free-png.png") ),
                                ),
                              ),
                              SizedBox(height: 6,),
                              Text("CAULIFLOWER",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                               SizedBox(height: 6,),
                              Text("RS.200(1KG)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                               SizedBox(height: 6,),
                                Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            ],
                          ),
                          ),
                        ),
                 ),
                      SizedBox(width: 13,),
                       Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: FloatingActionButton(onPressed: (){},
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image:NetworkImage
                         ("https://static.vecteezy.com/system/resources/previews/050/030/199/non_2x/parsnip-vegetable-isolate-pastinaca-sativa-clipart-parsnip-with-leaves-illustration-png.png"), ),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text("PARSNIPS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                            Text("RS.200(1KG)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                              Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Center(
                              child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          ],
                        ),
                        ),
                      ),
                      SizedBox(width: 13,),
                       Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: FloatingActionButton(onPressed: (){},
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image:NetworkImage
              ("https://static.vecteezy.com/system/resources/thumbnails/049/958/024/small/fresh-green-peas-in-pods-and-scattered-around-them-transparent-png.png") ),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text("GREEN PEAS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                            Text("RS.200(1KG)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 6,),
                              Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Center(
                              child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          ],
                        ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 30,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Container(
                          height: 210,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: FloatingActionButton(onPressed: (){},
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:NetworkImage
                                   ("https://static.vecteezy.com/system/resources/thumbnails/053/117/169/small/sweet-potato-food-healthy-png.png") ),
                                ),
                              ),
                              SizedBox(height: 6,),
                              Text("SWEET POTATOES",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                               SizedBox(height: 6,),
                              Text("RS.200(1KG)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                               SizedBox(height: 6,),
                                Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            ],
                          ),
                          ),
                        ),
                        SizedBox(width: 13,),
                         Container(
                          height: 210,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: FloatingActionButton(onPressed: (){},
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:NetworkImage
                                          ("https://static.vecteezy.com/system/resources/previews/028/831/076/non_2x/fresh-green-spinach-png.png") ),
                                ),
                              ),
                              SizedBox(height: 6,),
                              Text("MUSTARD GREEN",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                               SizedBox(height: 6,),
                              Text("RS.200(1KG)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                               SizedBox(height: 6,),
                                Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            ],
                          ),
                          ),
                        ),
                    ],
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




class MIXEDVEG extends StatefulWidget {
  const MIXEDVEG({super.key});

  @override
  State<MIXEDVEG> createState() => _MIXEDVEGState();
}

class _MIXEDVEGState extends State<MIXEDVEG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("MIXED VEGITABLES",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
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
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    // backgroundColor:  Colors.green,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/029/714/283/small/potato-transparent-background-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("POTATOES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    // backgroundColor:  Colors.green,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/049/423/087/small_2x/red-onion-and-cut-red-onions-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("ONIONS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    // backgroundColor:  Colors.green,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/054/125/379/small/tomato-an-slice-isolated-transparent-background-png.png")
                         
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("TOMATOES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/024/297/520/non_2x/green-chili-peppers-isolated-on-transparent-background-clipping-path-ai-generated-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GREEN CHILLI",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/050/594/283/non_2x/green-onions-clipping-path-isolate-on-transparency-background-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GREEN GARLIC",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    // backgroundColor:  Colors.green,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage 
          ("https://static.vecteezy.com/system/resources/previews/060/361/084/non_2x/fresh-ginger-root-with-green-leaves-isolated-on-a-transparent-background-for-culinary-and-health-applications-ginger-fresh-with-leaves-isolated-on-transparent-backgroundd-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GREEN GINGER",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
     ("https://static.vecteezy.com/system/resources/thumbnails/050/764/581/small/cilantro-cilantro-herb-top-view-green-cilantro-vegetable-flat-lay-isolated-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("CORIANDER",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    // backgroundColor:  Colors.green,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/040/332/891/small/ai-generated-fresh-lemon-isolated-on-transparent-background-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("LEMONS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 150 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
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
         ),
        ],
      ),
      ),
    );
  }
}


class MEAT extends StatefulWidget {
  const MEAT({super.key});

  @override
  State<MEAT> createState() => _MEATState();
}

class _MEATState extends State<MEAT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("MEAT & BEAF",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
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
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/048/093/519/non_2x/high-quality-realistic-fresh-raw-meat-isolated-on-transparent-background-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("CHICKEN",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 550 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://img.pikbest.com/png-images/20240910/meat-beef-png-image-with-clipping-path-fresh-and-detailed-cuts_10825489.png!bw700"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("BEAF",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 1500 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/039/630/988/non_2x/ai-generated-raw-beef-meat-on-transparent-background-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("LAMB",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 1300 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/027/521/085/small_2x/fresh-beef-isolated-on-transparent-background-raw-meat-cut-out-generative-ai-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GOAT",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 1400 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/049/799/009/small_2x/steak-meat-beef-isolated-transparent-background-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("CAMEL",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 2900 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage 
          ("https://static.vecteezy.com/system/resources/previews/048/093/519/non_2x/high-quality-realistic-fresh-raw-meat-isolated-on-transparent-background-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("DUCK",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 1000 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/previews/025/028/086/non_2x/rabbit-meat-food-haunch-generative-ai-free-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("RABBIT",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 2000 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/053/347/188/small/plate-of-raw-tuna-meat-fillet-isolated-on-transparent-background-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("FISH",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("RS 650 (1kg)",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(fontSize: 15,color: Colors.yellow,fontWeight: FontWeight.bold),),
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
         ),
        ],
      ),
      ),
    );
  }
}