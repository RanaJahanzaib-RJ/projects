import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

void main(){
  runApp(ApiP1App());
}
class ApiP1App extends StatelessWidget {
  const ApiP1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "API Part 1",
     debugShowCheckedModeBanner: false,
     home: APIP1SCREEN(),
    );
  }
}
class APIP1SCREEN extends StatefulWidget {
  const APIP1SCREEN({super.key});

  @override
  State<APIP1SCREEN> createState() => _APIP1SCREENState();
}

class _APIP1SCREENState extends State<APIP1SCREEN> {

  List<postModel> postlist = [];
  Future<List<postModel>> getPostApi  ()async{
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  var data = jsonDecode(response.body.toString());
  if(response.statusCode ==200){
   for(Map<String,dynamic> i in data){
    postlist.add(postModel.fromJson(i) );
   }
   return postlist;
  }else{
    return postlist;
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Part 1"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
            future: getPostApi(),
            builder: (context, snapshot) {
             if (snapshot.hasData){
               return ListView.builder(
               itemCount: postlist.length,
               itemBuilder: (context, index) {
               return Card(
               elevation: 10,
               child: Padding(padding: EdgeInsets.all(8.0),
               child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               Row(
              children: [
              Text('id:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationColor: Colors.red),),
              Text(postlist[index].id.toString(),),
              ],
               ),
               Text("TITLE",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationColor: Colors.red),),
               Text(postlist[index].title.toString(),),
               Text("DESCRIPTION",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationColor:Colors.red ),),
               Text(postlist[index].body.toString(),),
              ],
               ),
               ),
               ); 
               },
               );
             }else{
              return Text('Loading');
             }
            },
            ),
          ),
        ],
      )
    );
  }
}

class postModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  postModel({this.userId, this.id, this.title, this.body});

  postModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}