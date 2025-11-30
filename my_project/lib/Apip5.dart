import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main(){
runApp(DECAPIAPP());
}
class DECAPIAPP extends StatelessWidget {
  const DECAPIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:  'API LAST PART ',
    debugShowCheckedModeBanner: false,
    home: GETAPILP(),
    );
  }
}
class GETAPILP extends StatefulWidget {
  const GETAPILP({super.key});

  @override
  State<GETAPILP> createState() => _GETAPILPState();
}

class _GETAPILPState extends State<GETAPILP> {

   Future<ProductModel> getProductApi ()async {
    final response =await http.get(Uri.parse("https://webhook.site/d24f9761-dfba-4759-bcda-f42f3dd539b7"));
    var data = jsonDecode(response.body.toString(),);
    if(response.statusCode == 200){
     return ProductModel.fromJson(data);
    }else{
      return ProductModel.fromJson(data);
    }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
    title: Text('Fashion Collection',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),
    ),
    centerTitle: true,
    backgroundColor: Colors.deepPurple,
    ),
    body: Column(
    children: [
    Expanded(
    child: FutureBuilder<ProductModel>(
    future:getProductApi(),
    builder:(context,snapshot){
     if(snapshot.hasData){
     return ListView.builder(
     itemCount: snapshot.data!.data!.length,
     itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
          title: Text(snapshot.data!.data![index].shop!.name.toString(),),
          subtitle: Text(snapshot.data!.data![index].shop!.shopemail.toString(),),
          leading: CircleAvatar(
          backgroundImage: NetworkImage(snapshot.data!.data![index].shop!.image.toString(),),
          ),
          ),
          Container(
            height:MediaQuery.of(context).size.height*.3,
            width: MediaQuery.of(context).size.width*1,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data!.data![index].images!.length,
            itemBuilder: (context, position) {
            return Container(
             height: MediaQuery.of(context).size.height*.25,
             width: MediaQuery.of(context).size.width*.5,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(snapshot.data!.data![index].images![position].url.toString(),),
              ),
             ),
            ); 
            },
            ),
          ),
          Icon(snapshot.data!.data![index].inWishlist! == true ? Icons.favorite : Icons.favorite_border_outlined),
        ],
        ),
      );
     }, 
     );

     }else{
     return Text("Loading");
     }
    }
    ),
    ),
    ],
    ),
    );
  }
}



class ProductModel {
  bool? success;
  String? message;
  List<Data>? data;

  ProductModel({this.success, this.message, this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  Categories? categories;
  Subcat? subcat;
  Shop? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? color;
  String? size;
  bool? inWishlist;
  List<Images>? images;

  Data(
      {this.sId,
      this.onSale,
      this.salePercent,
      this.sold,
      this.sliderNew,
      this.sliderRecent,
      this.sliderSold,
      this.date,
      this.title,
      this.categories,
      this.subcat,
      this.shop,
      this.price,
      this.saleTitle,
      this.salePrice,
      this.description,
      this.color,
      this.size,
      this.inWishlist,
      this.images});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    onSale = json['on_sale'];
    salePercent = json['sale_percent'];
    sold = json['sold'];
    sliderNew = json['slider_new'];
    sliderRecent = json['slider_recent'];
    sliderSold = json['slider_sold'];
    date = json['date'];
    title = json['title'];
    categories = json['categories'] != null
        ? new Categories.fromJson(json['categories'])
        : null;
    subcat =
        json['subcat'] != null ? new Subcat.fromJson(json['subcat']) : null;
    shop = json['shop'] != null ? new Shop.fromJson(json['shop']) : null;
    price = json['price'];
    saleTitle = json['sale_title'];
    salePrice = json['sale_price'];
    description = json['description'];
    color = json['color'];
    size = json['size'];
    inWishlist = json['in_wishlist'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['on_sale'] = this.onSale;
    data['sale_percent'] = this.salePercent;
    data['sold'] = this.sold;
    data['slider_new'] = this.sliderNew;
    data['slider_recent'] = this.sliderRecent;
    data['slider_sold'] = this.sliderSold;
    data['date'] = this.date;
    data['title'] = this.title;
    if (this.categories != null) {
      data['categories'] = this.categories!.toJson();
    }
    if (this.subcat != null) {
      data['subcat'] = this.subcat!.toJson();
    }
    if (this.shop != null) {
      data['shop'] = this.shop!.toJson();
    }
    data['price'] = this.price;
    data['sale_title'] = this.saleTitle;
    data['sale_price'] = this.salePrice;
    data['description'] = this.description;
    data['color'] = this.color;
    data['size'] = this.size;
    data['in_wishlist'] = this.inWishlist;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String? sId;
  String? type;
  int? salePercent;
  String? date;
  String? name;
  String? image;

  Categories(
      {this.sId,
      this.type,
      this.salePercent,
      this.date,
      this.name,
      this.image});

  Categories.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    salePercent = json['sale_percent'];
    date = json['date'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['type'] = this.type;
    data['sale_percent'] = this.salePercent;
    data['date'] = this.date;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}

class Subcat {
  String? sId;
  String? type;
  int? salePercent;
  String? date;
  String? name;

  Subcat({this.sId, this.type, this.salePercent, this.date, this.name});

  Subcat.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    salePercent = json['sale_percent'];
    date = json['date'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['type'] = this.type;
    data['sale_percent'] = this.salePercent;
    data['date'] = this.date;
    data['name'] = this.name;
    return data;
  }
}

class Shop {
  String? sId;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  String? image;

  Shop(
      {this.sId,
      this.isActive,
      this.createdAt,
      this.name,
      this.description,
      this.shopemail,
      this.shopaddress,
      this.shopcity,
      this.userid,
      this.image});

  Shop.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    isActive = json['is_active'];
    createdAt = json['created_At'];
    name = json['name'];
    description = json['description'];
    shopemail = json['shopemail'];
    shopaddress = json['shopaddress'];
    shopcity = json['shopcity'];
    userid = json['userid'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['is_active'] = this.isActive;
    data['created_At'] = this.createdAt;
    data['name'] = this.name;
    data['description'] = this.description;
    data['shopemail'] = this.shopemail;
    data['shopaddress'] = this.shopaddress;
    data['shopcity'] = this.shopcity;
    data['userid'] = this.userid;
    data['image'] = this.image;
    return data;
  }
}

class Images {
  String? id;
  String? url;

  Images({this.id, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    return data;
  }
}