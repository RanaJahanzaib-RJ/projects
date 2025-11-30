// import 'dart:convert';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


void main(){
runApp(APIP3APP());
}

class APIP3APP extends StatelessWidget {
  const APIP3APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "API PART 3",
    debugShowCheckedModeBanner: false,
    home: COMPLEXAPP(),
    );
  }
}
class COMPLEXAPP extends StatefulWidget {
  const COMPLEXAPP({super.key});

  @override
  State<COMPLEXAPP> createState() => _COMPLEXAPPState();
}

class _COMPLEXAPPState extends State<COMPLEXAPP> {

List<UserModel> userList = [];
Future<List<UserModel>> getUserList () async {
final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
var data = jsonDecode(response.body.toString());
if(response.statusCode == 200){
  for(Map<String,dynamic> i in data){
  print(i['name']);
  userList.add(UserModel.fromJson(i));
  }
  return userList;
}else{
 return userList;
}
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("API Part 3"),
      ),
      body: Column(
      children: [
      Expanded(
      child:FutureBuilder(
      future:getUserList(),
       builder: (context, AsyncSnapshot<List<UserModel>> snapshot){
      if(snapshot.hasData){
       return ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
        return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
          UserButton(title: 'id:', value:snapshot.data ![index].id.toString()),
          UserButton(title: 'Name', value:snapshot.data ![index].name.toString()),
          UserButton(title: 'UserName', value:snapshot.data ![index].username.toString()),
          UserButton(title: 'Company', value:snapshot.data ![index].company.toString()),
          UserButton(title: 'Address', value:snapshot.data ![index].address.toString()),
          UserButton(title: 'Phone', value:snapshot.data ![index].phone.toString()),
          UserButton(title: 'Email', value:snapshot.data ![index].email.toString()),
          UserButton(title: 'Website', value:snapshot.data ![index].website.toString()),
          ],
          ),
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

class UserButton extends StatelessWidget {
  String title, value;
  UserButton({ Key? key , required this.title, required this.value,}):super(key:key);
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

class UserModel {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  UserModel(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    phone = json['phone'];
    website = json['website'];
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['phone'] = this.phone;
    data['website'] = this.website;
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    return data;
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
    geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['suite'] = this.suite;
    data['city'] = this.city;
    data['zipcode'] = this.zipcode;
    if (this.geo != null) {
      data['geo'] = this.geo!.toJson();
    }
    return data;
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  Geo.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.catchPhrase, this.bs});

  Company.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    catchPhrase = json['catchPhrase'];
    bs = json['bs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['catchPhrase'] = this.catchPhrase;
    data['bs'] = this.bs;
    return data;
  }
}



