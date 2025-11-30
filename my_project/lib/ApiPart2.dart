import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
void main(){
 runApp(ApiP2App()); 
}
class ApiP2App extends StatelessWidget {
  const ApiP2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Api Part 2',
    debugShowCheckedModeBanner: false,
    home: PhotosApp(),
    );
  }
}
class PhotosApp extends StatefulWidget {
  const PhotosApp({super.key});

  @override
  State<PhotosApp> createState() => _PhotosAppState();
}

class _PhotosAppState extends State<PhotosApp> {

  List<Photos> photosList = [];
  Future<List<Photos>> getphotos ()async{
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
  var data = jsonDecode(response.body.toString());
  print(data);
  if(response.statusCode == 200){
   for(Map<String, dynamic> i in data){
   Photos photos = Photos(title: i['title'], url:i['url'], id:i['id']);
   photosList.add(photos);
   }
   return photosList;
  }else{
   return photosList;
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("FETCHING DATA"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
     body: Column(
      children: [
      Expanded(
     child: FutureBuilder(
    future: getphotos(),
     builder:(context,AsyncSnapshot<List<Photos>> snapshot){
      if(snapshot.hasData){
      return ListView.builder(
      itemCount: photosList.length,
      itemBuilder: (context, index) {
      return ListTile(
      leading: CircleAvatar(
      backgroundImage: NetworkImage(snapshot.data![index].url.toString(),),
      ),
      title:Row(
       children: [
       Text('Notesid:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationColor: Colors.deepPurple),),
       Text(snapshot.data![index].id.toString()),
       ],
      ),
      subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text('TITLE:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationColor: Colors.deepPurple),),
      Text(snapshot.data![index].title.toString(),),
      ],
      ),
      );
      },
      );
      }else{
       return Text("");
      }
     }
     ), 
      ),
      ],
     ), 
    );
  }
}

class Photos {
String title, url ;
int id;
Photos({required this.title,required this.url, required this.id});
}