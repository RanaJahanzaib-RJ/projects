import 'package:flutter/material.dart';


void main(){
  runApp(FinalApp());
}
class FinalApp extends StatelessWidget {
  const FinalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FinalScreen(),
    );
  }
}
class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
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
          height: 300,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("SLURP",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                         shadows: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 5,
                    offset: Offset(3, 3),
                  ),
                ],
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  children: [
                    SizedBox(height: 140,),
                    Text("UNLIMITED",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                         shadows: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 5,
                    offset: Offset(3, 3),
                  ),
                ],
                    ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 140,
                      width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                      image: NetworkImage
                      ("https://png.pngtree.com/png-vector/20221118/ourmid/pngtree-flat-vector-illustration-of-a-green-background-with-a-coffee-cup-icon-featuring-the-text-coffee-vector-png-image_40963780.jpg"),
                      ),
                      color: Colors.green,
                    ),
                 
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 65),
                child: Text("COFFEE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75,color: Colors.white,
                shadows: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 5,
                    offset: Offset(3, 3),
                  ),
                ],
                ),
                ),
              ),
            ],
          ),
         ),
       ),
        Column(
          children: [
               Text("WHY SLURP??",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,shadows: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 3,
                  offset: Offset(5, 5),
                ),
                ],
                ),
                ),
          ],
        ),
        SizedBox(height: 15,),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              ),
            SizedBox(width: 15,),
            Container(
            height: 200,
            width: 130,
             decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
             color: Colors.green,
            ),
             ),
             child: Column(
             children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage
                  ("https://png.pngtree.com/png-clipart/20201208/original/pngtree-brown-coffee-paper-cup-3d-elements-png-image_5575983.jpg"),
                ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WHY SLURP",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text("SLURP is the first",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      Text("and only coffee",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      Text("Membership..!!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return WHYSlurp();
                        }),);
                      }, child:Text("Learn more -->",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),) ),
                    ],
                  ),
                ],
              ),
             ],
             ),
             ),
              SizedBox(width: 15,),
              Container(
            height: 200,
            width: 130,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
            color: Colors.green,
            ),
           ),
           child: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage
                  ("https://png.pngtree.com/png-clipart/20240306/original/pngtree-coffee-maker-sticker-png-image_14522054.png"),

                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ENDLESS COFFEE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text("You can get your",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Your desired size",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("of coffee or",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ENDLESSCOFFEE();
                        }));
                      }, child: Text("Learn more -->",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),),
                    ],
                  ),
                ],
              ),
            ],
           ),
             ),
             SizedBox(width: 15,),
             Container(
            height: 200,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.green,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: NetworkImage
                    ("https://static.vecteezy.com/system/resources/previews/036/584/881/non_2x/coffee-bag-and-cup-perfect-for-coffee-shops-and-packaging-designs-3d-render-png.png"),

                    ),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("ORDER",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17),),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Order from afar if ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                         Text("you wish, and  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          Text("your coffee well ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 5,),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ORDER();
                            }));
                          }, child: Text("Learn more -->",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),),
                      ],
                    ),
          
                  ],
                ),
              ],
            ),
             ),
            ],
          ),
        ),
        SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 700,
          width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
      
         child: Column(
         
          children: [
            SizedBox(height: 35,),
            Text("HOW TO JOIN!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
             Text("------------------------",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
            SizedBox(height: 50,),
           Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(image: NetworkImage
                      ("https://alfred.la/cdn/shop/files/V3_AppFeatureGraphic.png?v=1690573639&width=480"),

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 36,),
           Center(
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){}, child:Text("{1}   -     -     -   {2}   -   -   -    {3}    -    -     -    {4},",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),
                ),
                ),
              ],
             ),
           ),
         Padding(
           padding: const EdgeInsets.only(left: 70),
           child: Row(
            children: [
            SizedBox(height: 100,),
            TextButton(onPressed: (){}, child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child:Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("SLURP",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                  ],
                ),
              ),
            ),
            ),
            SizedBox(width: 15,),
             TextButton(onPressed: (){}, child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_downward_rounded,color: Colors.green),
                  ],
                ),
              ),
            ),
            ),
               SizedBox(width: 15,),
             TextButton(onPressed: (){}, child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: NetworkImage
                    ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg8WTWT8eVXexlmsMXU1hKFWlh0MoToIINQQ&s"),
                    ),
                    color: Colors.green,
                  ),
                 ),
                  ],
                ),
              ),
            ),
            ),
               SizedBox(width: 15,),
             TextButton(onPressed: (){}, child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.qr_code_scanner_outlined,color: Colors.green,size: 20,),
                  ],
                ),
              ),
            ),
            ),
            ],
           ),
         ),
         SizedBox(height: 10,),
         Center(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Step 1",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(width: 35,),
              Text("Step 2",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 35,),
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
              Text("coffee in the App",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
                ],
               ),
                   SizedBox(width: 10,),
                   Column(
            children: [
                Text("Show your Q-R code",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
              SizedBox(height: 3,),
              Text("& get your Hot coffee",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
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

   /// STEP 1//
       
    class WHYSlurp extends StatefulWidget {
  const WHYSlurp({super.key});

  @override
  State<WHYSlurp> createState() => _WHYSlurpState();
}

class _WHYSlurpState extends State<WHYSlurp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WHY SLURP ??",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
     body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
           Container(
          height: 200,
          width: 200,
         decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
          image: NetworkImage
           ("https://png.pngtree.com/png-clipart/20201208/original/pngtree-brown-coffee-paper-cup-3d-elements-png-image_5575983.jpg"),
          ),
         ),
         ),
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("Coffee is cherished beverage enjoyed by millions worldWide,and its important goes beyond just being a morning retual. its service as a vitual source of energy, providing a much-needed boost to start the day. The caffeine in coffee stimulates the central nervouse system,enhancing alterness, concentration, and overall cognitive function.",
           style: TextStyle(fontSize: 29,color: Colors.black),
           ),
         ),
          ],
         ),
          ),
        ),
    );
  }
}

  // STEP 2//

class ENDLESSCOFFEE extends StatefulWidget {
  const ENDLESSCOFFEE({super.key});

  @override
  State<ENDLESSCOFFEE> createState() => _ENDLESSCOFFEEState();
}

class _ENDLESSCOFFEEState extends State<ENDLESSCOFFEE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Endless Coffee",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ), 
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: 
          Column(
            children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage
                ("https://png.pngtree.com/png-clipart/20240306/original/pngtree-coffee-maker-sticker-png-image_14522054.png"),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The caffeine in coffee stimulates the central nervouse system, enhancing alterness, concentatrion,and overall cognetive function.Additionally,coffee has social significance, often serving as a focal point for gatherings and conversations.its rich aroma and diverse flavors offer a comforting experience, making its a favorite choice for relaxation and enjoyment.Whether for Productivity or pleasure, coffee holds a special place in daily life.",
                style: TextStyle(fontSize: 24,color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ), 
    );
  }
}


// STEP 3//

class ORDER extends StatefulWidget {
  const ORDER({super.key});

  @override
  State<ORDER> createState() => _ORDERState();
}

class _ORDERState extends State<ORDER> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
        title: Text("ORDER",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
     floatingActionButton: FloatingActionButton(
      child: Text("ORDER",style: TextStyle(color: Colors.white,fontSize: 15,),),
      backgroundColor: Colors.green,
      onPressed: (){}
     ),
    body: Container(
   color: Colors.white,
      child: ListWheelScrollView(itemExtent: 200, 
      children: [
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                    color: Colors.green,
                  ),
              
                ),
                child: Column(
                  children: [
                    Text("SIGNATURE BLEND",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("A rich, full-bodies coffee with notes of dark chocolate and black cherry. Grown on the slopes of a...",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('RS 3500',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        ("https://images.squarespace-cdn.com/content/v1/55dcee1be4b07137c6a83fc6/1691779324203-9K6Z89J5F8KLTOGT12EL/Triforce+Blend.jpg"),
                        ),
                        
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
                       Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: Colors.green,
                  ),
                ),
                child: Column(
                  children: [
                    Text("GOLDEN SUNRISE",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("A smooth and bright coffee with a citrusy kick. sourced from rolling hills of Africa..",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('Price:RS3000',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        ("https://sunrisecoffeecompany.com/cdn/shop/products/heavy-haul-angle_1512x.png?v=1608759437"),
                        ),
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
                     Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: Colors.green,
                  ),
                ),
                child: Column(
                  children: [
                    Text("RAINFOREST RHAPSODY",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("An earth and complex coffee with a notes of toasted nuts and caramel. sustainably Grown in the..",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('Price:RS4000',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVl6GCe0wZlDWAr9yuh8LLiSSWc4m4jzqfQ&s"),
                        ),
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
                      Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: Colors.green,
                  ),
                ),
                child: Column(
                  children: [
                    Text("HARVEST MOON",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("A smooth and earthy blend with notes of cocoa and hazelnut..",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('Price:RS2800',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLgZdAt1bqxt6DZ-Efv6SkyGvAS4njeyLTUA&s"),
                        ),
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
                      Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: Colors.green,
                  ),
                ),
                child: Column(
                  children: [
                    Text("WILDFIRE",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("A bold and smooky blend with notes of dark chocolate and molasses..",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('Price:RS3500',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_5pL1Q7FlhrkQov1UPjUmC8KOkIxjx3VMjORd4xROFmgJLMQ5czth9EShHsHLY3SKVzE&usqp=CAU"),
                        ),
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
                      Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: Colors.green,
                  ),
                ),
                child: Column(
                  children: [
                    Text("WALNUT WONDER",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("A smooth and nutty coffee from the slopes of South Africa",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('Price:RS3000',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJAUyf0DSW9P71w-tzJ6QBynCZ5gukihcdxOTqEB9G4aDrENoGLQQs6q6NLCVzGz2jOR8&usqp=CAU"),
                        ),
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
                    Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: Colors.green,
                  ),
                ),
                child: Column(
                  children: [
                    Text("BREEZY BEANS",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("This coffee blend is made from beans and sourced from Honduras and Costa Rica..",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('Price:RS3200',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRifTaUK8KnIZYocKN7HorFj6m9rrDLIWfc4PE1ISaM-Pxk5Xld-giQtkf7MOTShzMfi4&usqp=CAU"),
                        ),
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
                    Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: Colors.green,
                  ),
                ),
                child: Column(
                  children: [
                    Text("INDO-VIET ROAST",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("This coffee blend is made from beans and sourced from Indonasia and Vietnam..",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('Price:RS3610',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        ("https://images.squarespace-cdn.com/content/v1/55dcee1be4b07137c6a83fc6/1594335789115-RZGJ6Z6QXOHH7Q8ZAOJP/5lb+Moonbat+bag_no+weight.jpg?format=1000w"),
                        ),
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
                         Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: Colors.green,
                  ),
                ),
                child: Column(
                  children: [
                    Text(" NESCAFÉ® ClASSIC ",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("NESCAFE Classic Instant Coffee Powder | Great start to your morning | 100% Pure Coffee ",
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                          ),
                          Text('Price:RS3500',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage
                        // ("https://primebazar.com/public/uploads/all/U1W291W7bPLVvLJ1QOhrNTmBuobZjj90gMm0hWIA.webp"),
                        ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2pRmHYesyvX4Om-x5Z57YG5UBRmi5PoD8Q&s"),
                        ),
                       ),
                    ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                     color: Colors.green,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Column(
                    children: [
                      Text("ORDER PACK",style: TextStyle( color: Colors.amber,fontSize: 20),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 132,
                            width: 250,
                            decoration: BoxDecoration(
                             ), 
                              child:Column(
                                children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("If you want any coffee pack,Then you click (ORDER) button and fill the page and enjoy your favourite coffee",
                                   style: TextStyle( fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
                                   ),
                                   ),
                                 Container(
                                  height: 30,
                                  width: 230,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage
                                  ('https://t3.ftcdn.net/jpg/05/31/76/76/360_F_531767656_9ZYTdKAhUXatTUAUp7iYi6coq9dy3nSF.jpg',scale: 1),
                                  ),
                                ),
                                 ),
                                ],
                              ),
                           
                            
                          ),
                          Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage
                              ("https://static.vecteezy.com/system/resources/previews/036/584/881/non_2x/coffee-bag-and-cup-perfect-for-coffee-shops-and-packaging-designs-3d-render-png.png"),
                              ),
                            ),
                          ),
                
                        ],
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
  
            
        
