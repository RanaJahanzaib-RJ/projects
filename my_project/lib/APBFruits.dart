import 'package:flutter/material.dart';
void main(){
  runApp(APBApp());
}
class APBApp extends StatelessWidget {
  const APBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Fruits(),
    );
  }
}
class Fruits extends StatefulWidget {
  const Fruits({super.key});

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("FRUITS",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
     body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage
                ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLaGDXMaM41v94Jd3VgYcfYVVcD20KoEQkyQ&s"),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
                 Card(
                  elevation: 12,
                  shadowColor: Colors.redAccent,
                   child: Text("SUMMER FRUITS,",
                  style: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold,),),),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage
                                ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGA4vELHOsPWIOSBoxmsPfLKNqgiOml9CkGA&s"),
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("MANGOES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("PRICE:RS150(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                            SizedBox(height: 5,),
                            TextButton(onPressed: (){}, child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                          Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage
                                ("https://i0.wp.com/pearlyarts.com/wp-content/uploads/2022/07/Water-Melon-Clipart-WM.png?fit=1001%2C1001&ssl=1"),
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("WATERMELON",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("PRICE:RS100(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                            SizedBox(height: 5,),
                            TextButton(onPressed: (){}, child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                       SizedBox(width: 15,),
                           Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage
                                ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQly_fIoxrMik0WuXGdAjiuqPufh37enaiRqTGD9IcKZpMfvn4NPuRhKH_gd52-doN1WlM&usqp=CAU"),
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("APPLES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("PRICE:RS200(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                            SizedBox(height: 5,),
                            TextButton(onPressed: (){}, child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                          Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://i0.wp.com/pearlyarts.com/wp-content/uploads/2022/07/Cute-Pineapple-Clipart-WM.png?fit=1000%2C1001&ssl=1"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("PINEAPPLE",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS200(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEJQDg1V4fEI-vqZduU9ZeF31f9t8pKhl77A&s"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("CHERRIES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS400(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS8zCdKeaPMuD7U63S3vsF4vCC6dzBg1QFWg&s"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("PEACHES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS350(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                        SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://png.pngtree.com/png-vector/20230329/ourmid/pngtree-grape-fruit-dark-purple-summer-photo-png-image_6671310.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GRAPES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS180(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIhtYid8jIcLc9zmkVUTY0Cy47SvftO5XaK8Dy5YlYzt-3CynetsJvg_fIyDlslKwmRvg&usqp=CAU"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("PLUMS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS110(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
               ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbXWZg6V1Z8xBFew8h86Qd0os-AAnd6NI3y3xC3EQJOtJpk-RNJ6wjqtjkqKIguS6ErHQ&usqp=CAU"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GREWIA",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS120(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                    ],
                  ),
                  SizedBox(height: 15,),
                    Row(
                      children: [
                          SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://media.istockphoto.com/id/1345839212/vector/guava-fruit-vector-tropical-plant-fresh-product.jpg?s=612x612&w=0&k=20&c=--Oe2pi-hn9bp_01yOsaVyHdVpTVpPlwJ2F4g-UE3TI="),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GUAVA",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS250(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://thumb.ac-illust.com/58/58fe05d92a1874dfa7661a233222dbaa_t.jpeg"),
                            // ("https://thumb.ac-illust.com/28/28e6a2d4be40007c1697e20466b3caac_t.jpeg"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("APRICOTS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS290(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQafnMX6_PGMK4c1qBGfCMH5eC-O-yd-vOnuA&s"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("STRAWBERRIES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS450(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Card(
                      elevation: 12,
                      shadowColor: Colors.redAccent,
                  child: Text("WINTER FRUITS",style: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold, ),)),
              SizedBox(height: 15,),
              Row(
                children: [
             SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPG8xVeOg8RmkVZsli6Fhl5UErmBMA8cBtQ&s"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("ORANGES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS100(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQly_fIoxrMik0WuXGdAjiuqPufh37enaiRqTGD9IcKZpMfvn4NPuRhKH_gd52-doN1WlM&usqp=CAU"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("APPLES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS250(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU9rpb70qdAnslGav2xFiHzZaUJfVPw_3i8wXZ6WUfHjOaM03fuHhqkS5iDQ6Yu1xARik&usqp=CAU"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("DATES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS 500(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUHGY6xZVC88Gmz4ZqP9x6u0Ia-fx0UTA3jF-a7A65kJLZewDBlhfuUZqGLqE9oTW1ScA&usqp=CAU"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("PEARS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS170(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3q8TChnhJgKYlrTJPJ0hqsOvw_KIeeGStdg&s"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("BANANAS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS150(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZK_Q36shLBOeiCB0xPZozY3iQXmQgPL6_f1NT_iJ-BdalAwaZGlAQcnxxB2P2bVSwSrA&usqp=CAU"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("PAPAYAS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS190(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [  
                   SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
      ("https://media.istockphoto.com/id/1345839212/vector/guava-fruit-vector-tropical-plant-fresh-product.jpg?s=612x612&w=0&k=20&c=--Oe2pi-hn9bp_01yOsaVyHdVpTVpPlwJ2F4g-UE3TI="),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GUAVAS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS130(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://static.vecteezy.com/system/resources/thumbnails/041/734/361/small_2x/ai-generated-fresh-kiwi-fruit-on-transparent-background-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("KIWIS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS350(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
("https://static.vecteezy.com/system/resources/thumbnails/041/444/684/small_2x/ai-generated-cranberries-pile-with-cranberry-leaves-on-the-floor-healthy-organic-berry-natural-ingredients-concept-ai-generated-transparency-png.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("CRANBERRIES",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS250(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                  ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://png.pngtree.com/png-vector/20230329/ourmid/pngtree-grape-fruit-dark-purple-summer-photo-png-image_6671310.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("GRAPEFRUITS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS110(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
      ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1pmkX6WPdxe01JFuS4ptMGtYA22PUvKCIJne-x3956guWDFQnHjyqsSZjJHqzLxrtYds&usqp=CAU"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("POMEGRANTS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS410(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(width: 15,),
                      Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage
                            ("https://img.pikbest.com/png-images/20240930/a-basket-of-lemons-clipart_10911233.png!w700wp"),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("LEMONS",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("PRICE:RS280(1KG)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){}, child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                ],
              ),
            ),
          SizedBox(height: 20,),
             Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
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
                            height: 150,
                            width: 250,
                            decoration: BoxDecoration(
                             ), 
                              child:Column(
                                children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("If you want only one Fresh Fruits pack,Then you click (Add To Cart) button and fill the page and enjoy your Fresh Fruits",
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
                            ),
                            child:     Padding(
                padding: const EdgeInsets.only(left: 20),
                child: FloatingActionButton(onPressed: (){},
                backgroundColor: Colors.yellow,
                child: Text("ORDER",style: TextStyle(fontSize: 50,color: Colors.green),),
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