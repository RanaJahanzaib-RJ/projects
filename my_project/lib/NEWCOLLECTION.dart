import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main(){
 runApp(CollectionApp()
 ); 
}
class CollectionApp extends StatelessWidget {
  const CollectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CollectionScreen(),
    );
  }
}
class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  final ColorizeColor = [
  Colors.white,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
             backgroundImage: NetworkImage("https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg"),
              ),
              accountName: Text('Rana Jahanzaib',style: TextStyle(fontSize: 17),),
             accountEmail: Text('Profile,Setting & More',style: TextStyle(fontSize: 10),),   
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
               ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification"),
            ),
                  ListTile(
              leading: Icon(Icons.folder),
              title: Text("My Files"),
            ),
                  ListTile(
              leading: Icon(Icons.group),
              title: Text("Shared with me"),
            ),
                  ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
            ),
                  ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Recent"),
            ),
                  ListTile(
              leading: Icon(Icons.offline_pin),
              title: Text("Offline"),
            ),
                  ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("Upload"),
            ),
                  ListTile(
              leading: Icon(Icons.cloud_upload),
              title: Text("Backups"),
            ),
                  ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
                  ListTile(
              leading: Icon(Icons.reviews),
              title: Text("Review"),
            ),
               ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payments"),
            ),
            Divider(color: Colors.amber,),
              ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings & account"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.sort_rounded,size: 50.0,color: Colors.white,)),
        title:AnimatedTextKit(animatedTexts:[WavyAnimatedText("NEW",textStyle: TextStyle(color: Colors.amber,fontSize: 40,fontWeight: FontWeight.bold),),], ),
       actions: [
        IconButton(onPressed:(){}, icon: Icon(Icons.search,size: 30.0,color: Colors.white,),),
        SizedBox(width: 10,),
         badges.Badge(
          badgeContent: Text("4"),
          badgeStyle: badges.BadgeStyle(
            borderRadius: BorderRadius.circular(10),
            badgeColor: Colors.yellow,
          ),
          badgeAnimation: badges.BadgeAnimation.slide(
            animationDuration: Duration(microseconds: 900),
          ),         
          child: FaIcon(Icons.shopping_cart,color: Colors.white,size: 30.0,),
          
        ),

         SizedBox(width: 10,),
      
       ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
        child:Column(
         children: [
          Padding(
                 padding: const EdgeInsets.only(left: 70),
                 child: Row(
                  children: [
                    AnimatedTextKit(
                    animatedTexts:[
                      ColorizeAnimatedText("COLLECTION", textStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.bold), colors:ColorizeColor),
                    ],
                    isRepeatingAnimation: true,
                    ),
                  ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20.0,left: 40.0,right: 40.0,bottom: 15.0),
                 child: Column(
                  children: [
                 AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText("The New Textform outdoor is perminated",textStyle: TextStyle(color: Colors.white,fontSize: 20)),
                  TypewriterAnimatedText("with fresh, Inventive Style Pioneering design",textStyle: TextStyle(color: Colors.white,fontSize: 20),),
                  TypewriterAnimatedText("research....Read More",textStyle: TextStyle(color: Colors.white,fontSize: 20)),

                ],
                 ),
           ],
           ),
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CollectionScreen();
              }));
            }, child:Text("All"),
            style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>((states){
             if(states.contains(MaterialState.pressed)){
              return Colors.white;
             }
             return Colors.yellow;
            }),
            ),
            ),
            TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                return Brands();
              }));
            }, child: Text("Brands"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith((states){
             if(states.contains(MaterialState.pressed)){
              return Colors.white;
             }
             return Colors.yellow;
              }),
            ),
            ),
            TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                return CollectionScreen();
              }));
            }, child: Text("Tops"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith((states){
           if(states.contains(MaterialState.pressed)){
            return Colors.white;
           }
           return Colors.yellow;
              }),
            ),
            ),
            TextButton(onPressed: (){}, child: Text("Modrens"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith((states){
                if(states.contains(MaterialState.pressed)){
                  return Colors.white;
                }
                return Colors.yellow;
              }),
            ),
            ),
         TextButton(onPressed: (){}, child: Text("Sales"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith((states){
                if(states.contains(MaterialState.pressed)){
              return Colors.white;
                }
            return Colors.yellow;
              }),
            ),
            ),
          ],
         ),
         SizedBox(height: 10,),
         Divider(color: Colors.white,),
         SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Container(
           height: 200,
          width: 170,
            decoration: BoxDecoration(
            ),
          child:FloatingActionButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context){
             return Chair();
            }));
          },
          child: Container(
           height: 200,
          width: 170,
          decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.cover,
          image:NetworkImage("https://images.pexels.com/photos/32862389/pexels-photo-32862389.png?cs=srgb&dl=pexels-jyron-barclay-2151526792-32862389.jpg&fm=jpg"),),
          borderRadius: BorderRadius.circular(16),
            ),
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.copy_rounded),),
                ],
              ),
            ],
          ),
          ),
          ),
       ),
           Container(
          height: 200,
          width: 170,
            decoration: BoxDecoration(
            ),
           child:FloatingActionButton(onPressed: (){},
          child: Container(
           height: 200,
          width: 170,
          decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.cover,
          image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRIhxbELFZdX3vQq8d5srxJKhFdUJ7Yr7R3RoEj7i_1qPaHRFCk515U2mapUV0wj_NAyE&usqp=CAU"),),
          borderRadius: BorderRadius.circular(16),
            ),
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.copy_rounded),),
                ],
              ),
            ],
          ),
          ),
          ),
           ),
         ],
        ),
             Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Text("Scarlet\n Collection",style: TextStyle(fontSize: 17,color: Colors.white),),
             AnimatedTextKit(repeatForever: true,animatedTexts:[FlickerAnimatedText("\$320",textStyle: TextStyle(fontSize: 17,color: Colors.white),)],),
             SizedBox(width: 10,),
            Text("Scarlet\n Collection",style: TextStyle(fontSize: 17,color: Colors.white),),
             AnimatedTextKit(repeatForever: true,animatedTexts: [FlickerAnimatedText("\$300",textStyle: TextStyle(fontSize: 17,color: Colors.white),),],),
          ],
        ),
        SizedBox(height: 30,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Container(
          height: 200,
          width: 170,
            decoration: BoxDecoration(
            ),
          child: FloatingActionButton(onPressed: (){},
          child:Container(
          height: 200,
          width: 170,
          decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.cover,
          image:NetworkImage("https://png.pngtree.com/thumb_back/fh260/background/20250506/pngtree-bright-yellow-modern-kitchen-with-wooden-dining-set-image_17252096.jpg"),),
          borderRadius: BorderRadius.circular(16),
          ),
          child:Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.copy_rounded),),
                ],
              ),
            ],
          ),
          ), 
          ),
           ),
                        Container(
          height: 200,
          width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
           child: FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.amber,
          child:
          Container(
          height: 200,
          width: 170,
              decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.cover,
          image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxCJ77nCMU4j0ZMchlF_0f5dgu_9AU0UnnnjcjIRKa-h4FNX5SgOJyeVDxH_Oglk93C_A&usqp=CAU"),),
          borderRadius: BorderRadius.circular(16),
          ),
          child:Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.copy_rounded),),
                ],
              ),
            ],
          ),
          ),
          ),
           ),
         ],
        ),
             Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Text("Scarlet\n Collection",style: TextStyle(fontSize: 17,color: Colors.white),),
              AnimatedTextKit(repeatForever: true,animatedTexts: [FlickerAnimatedText("\$320",textStyle: TextStyle(fontSize: 17,color: Colors.white),),],),
             SizedBox(width: 10,),
             Text("Linsa\n Collection",style: TextStyle(fontSize: 17,color: Colors.white),),
             AnimatedTextKit(repeatForever: true,animatedTexts: [FlickerAnimatedText("\$300",textStyle: TextStyle(fontSize: 17,color: Colors.white),),],),
          ],
        ),   
        ],
        ),
      ),
      ),
    );
  }
}


class Chair extends StatefulWidget {
  const Chair({super.key});

  @override
  State<Chair> createState() => _ChairState();
}

class _ChairState extends State<Chair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 603,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
            image: NetworkImage("https://images.pexels.com/photos/6957813/pexels-photo-6957813.jpeg"),),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0E68C),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text("Chair\n Scarlet Collection",style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(height:30 ,width: 80,
                  child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                   child:Text("\$320")),
                  ),
                   SizedBox(height: 10,),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFF0E68C),
                    child:    CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.amber,
                  ),
                  ),
                Spacer(),
                 Container(
                  height: 50,
                  width: 200,
              decoration: BoxDecoration(
              color: Colors.amber,
               borderRadius: BorderRadius.circular(16),     
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CollectionScreen();
                  }));
                  }, icon:Icon(Icons.home,color: Colors.white,),),
                  FloatingActionButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProductPage();
                  }));
                  },
                  child: Icon(Icons.add,color: Colors.black,size: 30.0,),
                  ),
                 IconButton(onPressed: (){}, icon:Icon(Icons.person,color: Colors.white,),), 
                ],
              ),
                 ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ColorizeColor = [
  Colors.white,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    body: Column(
      children: [
           Container(
              height: 603,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
              image: NetworkImage("https://images.pexels.com/photos/6957813/pexels-photo-6957813.jpeg"),),
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
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
          child:Column(
            children: [
             ListTile(
              title:AnimatedTextKit(animatedTexts:[ColorizeAnimatedText("CHair",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ColorizeAnimatedText("\$320",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ColorizeAnimatedText("BUY NOW",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ColorizeAnimatedText("CHair",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ],
              isRepeatingAnimation: true,
              ),
              subtitle:Text("CHair",style: TextStyle(fontSize: 30,color: Colors.amber,fontWeight: FontWeight.bold),),
              trailing: Text("\$320",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),), 
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Row(
                children: [
                   AnimatedTextKit(animatedTexts:[WavyAnimatedText("Premium CHair",textStyle: TextStyle(fontSize:17,color: Colors.white,),),
                   ],
                  isRepeatingAnimation: true,
                   ),
                ],
               ),
             ),
             Spacer(),
             ListTile(
              title: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
               child:Center(child:  Text("BUY NOW",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),)),
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 20,
                child: IconButton(onPressed: (){}, icon:Icon(Icons.copy,color: Colors.black,),),
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

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  final ColorizeColor = [
  Colors.white,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
      Container(
      height: 605,width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
      image: NetworkImage
      ("https://www.shutterstock.com/image-vector/pakistan-skyline-gray-red-landmarks-260nw-490005610.jpg"),
      ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(onPressed:(){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios,color: Colors.black,size: 30.0,),),
              ],
            ),
          ),
          Spacer(),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
               child: Column(
                children: [
                  ListTile(
                    title:AnimatedTextKit(animatedTexts:[
                      TyperAnimatedText("Connecting Tradition From SINDH TO PUNJAB TO KPK _ Where Every City Tells a Story",textStyle: TextStyle(fontSize: 18,color: Colors.amber,),),
                    ],
                    isRepeatingAnimation: false,
                    ),
                 ),
                 Spacer(),
                 Column(
                  children: [
                    ListTile(
                      title:Center(
                 child: AnimatedTextKit(animatedTexts:[ColorizeAnimatedText("LAHORE",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  ColorizeAnimatedText("KARACHI",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                 ColorizeAnimatedText("MULTAN",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  ColorizeAnimatedText("FAISALABAD",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                 ColorizeAnimatedText("GUJRAT",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                 ColorizeAnimatedText("PESAWER",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  ColorizeAnimatedText("ISLAMABAD",colors: ColorizeColor,textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                ],
                 isRepeatingAnimation: true,
                 ),
               ),
                    ),
                  ],
                 ),
                 Spacer(),
                    ListTile(
              title: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                  return BrandsList();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
               child:Center(child:  Text("BRANDS LIST",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),)),
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
    );
  }
}

class BrandsList extends StatefulWidget {
  const BrandsList({super.key});

  @override
  State<BrandsList> createState() => _BrandsListState();
}

class _BrandsListState extends State<BrandsList> {
   final List<String> BrandsName = [
  "INTER WOOD","HABITT.Pk",
  "CHEN ONE","INDEX FURNITURE",
  "FURNITUREE HUB","HOID FURNITURE",
  "URBAN GALLERIA","APNA FURNITURE",
  "LASANI FURNITURE","KIFAYAT FURNITURE",
  ]; 
  //  final List <String> BrandsSpeciality =[
  // " Modren,office and Home furniture",             " Home Accessories, kitchenware",
  // " Luxury Furniture And LifeStyle Items",         " Thai Modren Designs, high-end furniture",
  // " Custom-made furniture, home decor",            " Customized & luxury Home furniture ",
  // " Affordable & Modren Styles",                   " Offering Multiple Vendors",
  // " Traditional Wood Furniture",                   " For Home And Offices",
  // ];
    final List <String> BrandsAddress =[
    "Address : Raiwind Road Lahore",                     "Address : Tipu Sultan Road Karachi",
    "Address : Sector F_6/3,Islamabad",                        "Address : Main Jail Road Lahore",
    "Address : Phase4, DHA,Lahore",                            "Address : DHA Phase 5 Lahore",
    "Address : Gulberg III,Lahore",                            "Address : Lahore Based",
    "Address : Jhang Road Faisalabad",                         "Address : Circular Road,Gujrat",
    ];
      final List <String> BrandsBranches =[
  "Branches: Lahore,karachi,ISB,FSD",                          "Branches: Lahore,karachi,ISB,Multan",
  "Branches: Avaiable In Major Cities",                        "Branches: Lahore,karachi And Islamabad",
  "Branches: ONLINE STORE",                                    "Branches: ONLINE STORE",
  "Branches: ONLINE STORE",                                    "Branches: ONLINE STORE",
  "Branches: Faisalabad,Lahore",                               "Branches: ONLINE STORE",
  ];
   final List <String> BrandsImages =[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSctmG8WXr9rm1vGmgNd1oYf-TMfowu7pCgE1zcZL9f6jvQUyjECMI0cAyGcKZ9NRH7rqs&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE1LwCpPWfahvZqLFAR_kTMniy8wQw9HaKPZCp83AqUroqBSmeVlFVAgoOPMKloPW6gkc&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo7Df--tP1FI_Pin6BgASgenxsgLUL3aEdQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRg14pddQ-3ukF51nRhqD1viJvza5dqsHMwA&s",
  "https://cdn.brandfetch.io/craftedfurniture.pk/fallback/lettermark/theme/dark/h/256/w/256/icon?c=1bfwsmEH20zzEfSNTed",
  "https://media.licdn.com/dms/image/v2/C560BAQEd-c7rOwRGiQ/company-logo_200_200/company-logo_200_200/0/1631303008039?e=2147483647&v=beta&t=wdOKG04VaAHILo8XkzNMW-9UEeVt1JHsPmdZrUnYExY",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjc3pcE1Fo9WhuUHJTM9hAAoNiqzxqGYaQW7PRA-WYQwXaBfhz2sYwOZrPs0M7jU3J-LI&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnzXLu09ov-Rh8O8TmXkHfLfhDokyX3UJkPMdnl9LiYRmDK6DTFBwOJoRtDKsThtPQraU&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwpoFVWc7j1En3I62RiVnBllUtu8kPaW6y9Ptt77yDzoVIkF2kNH7gDUxO4J-_y36XTAk&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf49V6bLBsnxp8UCQor9mHpi5SN7dhHv2TpQMi7tfmuL0ds2YvhV4Z6dQr9eRjMiHr-zQ&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios,size: 30.0,color: Colors.black,)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount:BrandsName.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading:Image.network(BrandsImages[index]),
                  title:Text(BrandsName[index].toString(),style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  ),
                  ),
                  subtitle:  Column(
                    children: [
                     Text(BrandsAddress[index].toString(),),
                     Text(BrandsBranches[index].toString(),),
                    ],
                  ),
             
                  trailing:ElevatedButton(onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(),
                  ),
                  child:Text("OPEN STORE",style: TextStyle(fontSize: 17,color: Colors.white),),),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Text(BrandsSpeciality[index].toString(),),
// Text(BrandsAddress[index].toString(),),

