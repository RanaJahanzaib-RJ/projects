
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main(){
runApp(APIP4APP());
}
class APIP4APP extends StatelessWidget {
  const APIP4APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API PART 4',
      debugShowCheckedModeBanner: false,
      home: NotPlugin(),
    );
  }
}
class NotPlugin extends StatefulWidget {
  const NotPlugin({super.key});

  @override
  State<NotPlugin> createState() => _NotPluginState();
}

class _NotPluginState extends State<NotPlugin> {
var data ;
 Future<void> getUserApi ()async{
  final response =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
   if(response.statusCode == 200){
      data = jsonDecode(response.body.toString());
   }else{}
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('API PRT 4'),
      centerTitle: true,
      ),
      body:Column(
      children: [
      Expanded(child: FutureBuilder(
      future: getUserApi(),
      builder:(context, snapshot){
      if(snapshot.connectionState == ConnectionState.waiting){
      return Text("Loading");
      }else{
       return ListView.builder(
      itemCount: data.length,
      itemBuilder:(context,index){
       return Card(
       child: Column(
       children: [
       DataButton(title: "Id", value:data[index]['id'].toString() ),
       DataButton(title: "Name", value:data[index]['name'].toString()),
       DataButton(title: "UserName", value:data[index]['username'].toString() ),
       DataButton(title: "Address", value:data[index]['address']['street'].toString() ),
       DataButton(title: "Geo", value:data[index]['address']['geo'].toString()),
       ],
       ),
      );
       }
       );
      }
      }
      ),
      ),
      ],
      ),
    );
  }
}

class DataButton extends StatelessWidget {
  String title, value;
 DataButton({ Key? key , required this.title, required this.value,}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(title),
      Text(value),
      ],
      ),
    );
  }
}