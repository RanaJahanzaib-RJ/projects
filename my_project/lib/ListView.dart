import 'package:flutter/material.dart';

void main(){
  runApp(ListviewApp());
}
class ListviewApp extends StatefulWidget {
  const ListviewApp({super.key});

  @override
  State<ListviewApp> createState() => _ListviewAppState();
}

class _ListviewAppState extends State<ListviewApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: MyListview(),
    );
  }
}

class MyListview extends StatefulWidget {
  const MyListview({super.key});

  @override
  State<MyListview> createState() => _MyListviewState();
}

class _MyListviewState extends State<MyListview> {
  List<String> ProductName =['Mango','orange','Grapes','Banana', 'Chery','Peach','Mixed Fruit'];
List<String>ProductUnit = ["(KG)", "(KG)", "(KG)", "(Dozzen)", "(KG)", "(KG)", "(KG)", ];
List<String>ProductValue =["Rs", "Rs", "Rs", "Rs", "Rs", "Rs", "Rs",];
List<int> ProductPrice =[200 , 170, 250, 150, 400, 310, 900];
List <String> ProductImages = [
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGA4vELHOsPWIOSBoxmsPfLKNqgiOml9CkGA&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPG8xVeOg8RmkVZsli6Fhl5UErmBMA8cBtQ&s",
"https://png.pngtree.com/png-vector/20230329/ourmid/pngtree-grape-fruit-dark-purple-summer-photo-png-image_6671310.png",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3q8TChnhJgKYlrTJPJ0hqsOvw_KIeeGStdg&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEJQDg1V4fEI-vqZduU9ZeF31f9t8pKhl77A&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS8zCdKeaPMuD7U63S3vsF4vCC6dzBg1QFWg&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd6KosxC55n5NEboPmpH8Mv5TIMGJ8a8eXrA&s",
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Listview Concept',style: TextStyle(color: Colors.white,fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
     body: Column(
      children: [
        Expanded(
          child:ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: ProductName.length,
            itemBuilder: (context,index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                   Row(
                    children: [
                    Image(
                     height: 100, 
                     width: 100,
                      image: NetworkImage(ProductImages[index].toString(),
                      ),
                      ),
                      Column(
                        children: [
                          Text(ProductName[index].toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),),
                         Row(
                           children: [
                               SizedBox(height: 5,),
                         Text(ProductValue[index].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),),
                       Text(ProductPrice[index].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),),
                           ],
                         ),
                            SizedBox(height: 5,),
                         Text(ProductUnit[index].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),),
                        ],
                      ),
                  
                    ],
                   ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 325),
                      //   child: Row(
                      //      children: [
                      //      OutlinedButton(onPressed: (){
                      //       BackButton(color: Colors.amber,);
                      //      }, child: Text('Add To Cart'),
                           
                      //      ),
                         
                      //      ],
                      //    ),
                      // ), 
                  ],
                ),
              ),
            );
          }
          ), 
          ),
      ],
     ),
    );
  }
}