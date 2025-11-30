import 'package:flutter/material.dart';
import 'package:my_project/instagramUI2.dart';

void main(){
runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.grey,
      ),
      home: InstagramScreen(),
    );
  }
}



// Creating  a Circles

class Circles extends StatelessWidget {
  final  String text;
   final String imageurl;
  Circles({required this.text, required this.imageurl });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      children: [
        Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
       shape: BoxShape.circle,
       color: Colors.grey[400],
       image: DecorationImage(
      fit: BoxFit.cover,
      image: NetworkImage(imageurl)),
      ),
      ),
      SizedBox(height: 10,),
      Text(text), 
      ],
      ),
    ) ;
  }
}

// Creating a post cards

class POSTCARDS extends StatelessWidget {
  final String text;
  final String imageurl;
  POSTCARDS({required this.text, required this.imageurl});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
              children: [
                Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[400],
                  image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageurl)),
                ),
                ),
                SizedBox(width: 20,),
                Text(text),
              ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Container(
        height: 300,
        decoration: BoxDecoration(
        color: Colors.grey[400],
        image: DecorationImage(image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/028/573/930/small/beautiful-garden-plants-flower-and-trees-ai-generated-png.png"),),
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
              children: [
              Icon(Icons.favorite),
               Icon(Icons.chat_bubble_outline),
               Icon(Icons.share),
              ],
              ),
            Icon(Icons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
          children: [
          Text("Liked by"),
          Text("Huzifa",style: TextStyle(fontWeight: FontWeight.bold),),
          Text("and"),
          Text("others",style: TextStyle(fontWeight: FontWeight.bold),),
          ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(text:TextSpan(
          children: [
          TextSpan(text: 'Ahmad',style: TextStyle(fontWeight: FontWeight.bold,),),
          TextSpan(text:'is a student and pursuing degree in information Technology by Islamia University of Bahawalpur' ),
          ],
          ),
          ),
        ),
      ],
    );
  }
}

