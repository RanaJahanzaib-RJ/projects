import 'package:flutter/material.dart';
import 'package:my_project/global/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FoodHome extends StatefulWidget {
  const FoodHome({
    super.key,
  });

  @override
  State<FoodHome> createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  PageController controller = PageController();
  bool isLastPage = false;
  final List<String> imgList = [
    "assets/group 12.png",
    "assets/Group 13.png",
    "assets/Group 15.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 840,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/Group 25.png"),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection:Axis.vertical ,
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Color(0xffF5474A),
                            child: Icon(
                              Icons.location_on_outlined,
                              size: 30.0,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          title: Text(
                            'Current location',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'venice, italy     ',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.dashboard_outlined,
                              size: 40.0,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 10,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search for shops & resturents",
                              fillColor: Color(0xffFFFFFF),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey.shade300),
                              prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.search,
                                    color: Color(0xffF5474A),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Food',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                          subtitle: Text(
                            'Delivery',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffF5474A)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                        decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/Group 26.png"),),
                        ),
                        child: CarouselSlider(items:imgList.map((url) => Image.asset(url)).toList(), options:CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        aspectRatio: 2.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000)),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffF5474A)),
                                child: Text(
                                  "view All",
                                  style: TextStyle(color: Color(0xffFFFFFF)),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ContainerRow(
                                  imageurl: "assets/Group 13.png",
                                  text: "Barger"),
                              SizedBox(
                                width: 10,
                              ),
                              ContainerRow(
                                  imageurl: "assets/Group 14.png", text: "Pizza"),
                              SizedBox(
                                width: 10,
                              ),
                              ContainerRow(
                                  imageurl: "assets/Group 15.png",
                                  text: "Drinks"),
                              SizedBox(
                                width: 10,
                              ),
                              ContainerRow(
                                  imageurl: "assets/Group 16.png", text: "Fries"),
                              SizedBox(
                                width: 10,
                              ),
                              ContainerRow(
                                  imageurl: "assets/Group 16.png", text: "Wings"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Brands in spotlight",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000)),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffF5474A)),
                                child: Text(
                                  "view All",
                                  style: TextStyle(color: Color(0xffFFFFFF)),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ContainerRow2(
                                imageurl: "assets/Group 17.png",
                                text: "KFC",
                                write: "35 MIN",
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              ContainerRow2(
                                imageurl: "assets/Group 18.png",
                                text: "Dominos",
                                write: "35 MIN",
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              ContainerRow2(
                                imageurl: "assets/Group 19.png",
                                text: "Burger king",
                                write: "35 MIN",
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              ContainerRow2(
                                imageurl: "assets/Group 20.png",
                                text: "Mcdonal",
                                write: "35 MIN",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFEEBD0),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "You daily deals",
                              style: TextStyle(
                                fontSize: 25,
                                color: secondaryColor,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              ContainerRow3(imageurl: "assets/Group 21.png"),
                              SizedBox(
                                width: 5,
                              ),
                              ContainerRow3(imageurl: "assets/Group 22.png"),
                              SizedBox(
                                width: 5,
                              ),
                              ContainerRow3(imageurl: "assets/Group 23.png"),
                              SizedBox(
                                width: 5,
                              ),
                              ContainerRow3(imageurl: "assets/Group 24.png"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerRow3 extends StatefulWidget {
  final String imageurl;
  ContainerRow3({
    Key? key,
    required this.imageurl,
  }) : super(key: key);
  @override
  State<ContainerRow3> createState() => _ContainerRow3State();
}

class _ContainerRow3State extends State<ContainerRow3> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: triColor,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.imageurl))),
          ),
        ),
      ],
    );
  }
}

class ContainerRow extends StatefulWidget {
  final String imageurl, text;
  ContainerRow({
    Key? key,
    required this.imageurl,
    required this.text,
  }) : super(key: key);

  @override
  State<ContainerRow> createState() => _ContainerRowState();
}

class _ContainerRowState extends State<ContainerRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: triColor,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(widget.imageurl)),
          ),
        ),
        Text(
          widget.text,
          style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
        ),
      ],
    );
  }
}

class ContainerRow2 extends StatefulWidget {
  final String imageurl, text, write;
  ContainerRow2({
    Key? key,
    required this.imageurl,
    required this.text,
    required this.write,
  }) : super(key: key);

  @override
  State<ContainerRow2> createState() => _ContainerRow2State();
}

class _ContainerRow2State extends State<ContainerRow2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: AssetImage(widget.imageurl)),
          ),
        ),
        Text(
          widget.text,
          style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
        ),
        Text(
          widget.write,
          style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
        ),
      ],
    );
  }
}

// class ContainerPage extends StatefulWidget {
//   final String imagrurl;
//   ContainerPage({
//     Key? key,
//     required this.imagrurl,
//   }) : super(key: key);

//   @override
//   State<ContainerPage> createState() => _ContainerPageState();
// }

// class _ContainerPageState extends State<ContainerPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 100,
//         width: double.infinity,
//         child: CarouselSlider(
//             items: [
//               Container(

//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(80),
//                     color: Color(0xffF5474A)),
//                 child: Center(
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(right: 45),
//                               child: Text(
//                                 '14 March',
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color(0xffFFFFFF)),
//                               ),
//                             ),
//                             Text(
//                               'Free Cold Drink   ',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15,
//                                   color: Color(0xffFFFFFF)),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 37),
//                               child: Text(
//                                 'For All Orders Over 100\$  ',
//                                 style: TextStyle(
//                                     fontSize: 13, color: Color(0xffFFFFFF)),
//                               ),
//                             ),
//                             Row(
//                               children: [],
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         height: 170,
//                         width: 80,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(widget.imagrurl)),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//             options: CarouselOptions(
//               scrollDirection: Axis.horizontal,
//               autoPlay: true,
//               aspectRatio: 2.0,
//               enlargeCenterPage: true,
//             )));
//   }
// }
