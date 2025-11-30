
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
void main(){
runApp(DropDownApp());
}

class DropDownApp extends StatelessWidget {
  const DropDownApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:'DROP DOWN',
    debugShowCheckedModeBanner: false,
    home: DPDNApp(),
    );
  }
}
class DPDNApp extends StatefulWidget {
  const DPDNApp({super.key});

  @override
  State<DPDNApp> createState() => _DPDNAppState();
}

class _DPDNAppState extends State<DPDNApp> {

  Future<List<DropDownModel>> getpost ()async{
  try{
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  final body = jsonDecode(response.body.toString())as List;
  if(response.statusCode ==200){
  return body.map((e){
  final map = e as Map<String, dynamic>;
  return DropDownModel(
  userId:map['userId'],
  id:map['id'],
  title:map['title'],
  body: map['body'],
  );
  }).toList();
  }
  }on SocketException{
   throw Exception('');
  }
   throw Exception('');
  }
  var selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
    title: Text("DROP DOWN BUTTON"),
    centerTitle: true,
     ),
     body: SafeArea(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       FutureBuilder<List<DropDownModel>>(future:getpost(), builder:(context,snapshot){
        if(snapshot.hasData){
        return DropdownButton(
        hint:Text("Selected Value"),
         icon: Icon(Icons.add_circle_outline),
         value: selectedValue,
         isExpanded: true,
         items:snapshot.data!.map((e){
          return DropdownMenuItem(
          value: e.id.toString(),
          child:Text(e.id.toString()),
          );
         }).toList(),
         onChanged:(value){
         selectedValue = value;
         setState(() {
           
         });
         }
        );
        }else{
          return CircularProgressIndicator();
        }
       }
       ),
      ],
     ),),
    );
  }
}




class DropDownModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  DropDownModel({this.userId, this.id, this.title, this.body});

  DropDownModel.fromJson(Map<String, dynamic> json) {
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