import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_project/global/colors.dart';

class EcommerceHome extends StatefulWidget {
  const EcommerceHome({super.key});

  @override
  State<EcommerceHome> createState() => _EcommerceHomeState();
}

class _EcommerceHomeState extends State<EcommerceHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                color: Color(0xffFFA451),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Group 01.png"))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/Group 02.png"))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get The Freshest Fruit Salad Combo",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: "StoryScript"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "We deliver the best and freshest fruit salad in\n Town,Order for combo today!!!!"),
                    SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return EcommerceHome1();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFA451),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Let's Continue",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "StoryScript",
                              fontSize: 20,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class EcommerceHome1 extends StatefulWidget {
  const EcommerceHome1({super.key});

  @override
  State<EcommerceHome1> createState() => _EcommerceHome1State();
}

class _EcommerceHome1State extends State<EcommerceHome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                color: Color(0xffFFA451),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Group 03.png"))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/Group 02.png"))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "What is your firstname?",
                          style: TextStyle(
                              fontSize: 25,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "StoryScript"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0xffF3F1F1),
                        filled: true,
                        hintText: "Enter your name",
                        hintStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffF3F1F1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffF3F1F1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return EcommerceHome2();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFA451),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Start Ordering",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "StoryScript",
                              fontSize: 20,
                            ),
                          )),
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

class EcommerceHome2 extends StatefulWidget {
  const EcommerceHome2({super.key});

  @override
  State<EcommerceHome2> createState() => _EcommerceHome2State();
}

class _EcommerceHome2State extends State<EcommerceHome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.align_horizontal_left,
                          color: Color(0xff070648),
                        )),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_basket_outlined,
                            color: Color(0xffFFA451),
                          ),
                        ),
                        Text(
                          "My Basket",
                          style:
                              TextStyle(color: Color(0xff27214D), fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Hello Tony, What fruit salad",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: "StoryScript"),
                        ),
                        Text(
                          "combo do you want today?",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: "StoryScript"),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xffF3F1F1),
                          filled: true,
                          hintText: "Search for fruit salad combos",
                          hintStyle: TextStyle(
                              color: Color(0xff86869E),
                              fontFamily: "StoryScript"),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20.0,
                            color: Color(0xff86869E),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color(0xffF3F1F1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color(0xffF3F1F1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.compare_arrows_sharp,
                        size: 30.0,
                        color: Color(0xff070648),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Recommended Combo",
                            style: TextStyle(
                              color: Color(0xff27214D),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          EContainer(
                            imageurl: "assets/Group 04.png",
                            text: "Honey lime combo",
                            value: "\$2000",
                            color: 0xffFFFFFF,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          EContainer(
                            imageurl: "assets/Group 05.png",
                            text: "Berry mango combo",
                            value: "\$8000",
                            color: 0xffFFFFFF,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TabBar(
                  indicator: BoxDecoration(
                  border: Border(bottom: BorderSide.none),
                  ),
                  tabs: [
                    Text(
                      "Hotest",
                      style: TextStyle(fontSize: 17, color: Color(0xff27214D)),
                    ),
                    Text("popular", style: TextStyle()),
                    Text("Newcombo", style: TextStyle(fontSize: 10)),
                    Text("Top"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ETable1();
                          }));
                        },
                        child: Hero(
                          tag: "",
                          child: EContainer(
                            imageurl: "assets/Group 06.png",
                            text: "Quinoa fruit salad",
                            value: "\$10000",
                            color: 0xffFFFAEB,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      EContainer(
                        imageurl: "assets/Group 07.png",
                        text: "Tropical fruit salad",
                        value: "\$8000",
                        color: 0xffFEF0F0,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      EContainer(
                        imageurl: "assets/Group 04.png",
                        text: "melon fruit salad",
                        value: "\$8000",
                        color: 0xffF1EFF6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ETable1 extends StatefulWidget {
  const ETable1({super.key});

  @override
  State<ETable1> createState() => _ETable1State();
}

class _ETable1State extends State<ETable1> {
  int count = 0;
  void addvalue() {
    setState(() {
      count++;
    });
  }

  bool isLike = false;
  void removevalue() {
    setState(() {
      count = max(0,count-1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 20.0,
                                  color: Color(0xff000000),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "Go back",
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff000000)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Hero(
                      tag: "",
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/Group 06.png"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Container(
                      height: 525,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12))),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Quinoa Fruit Salad",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        removevalue();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_circle_outline,
                                      size: 30.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    count.toString(),
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xff000000)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.orange.shade100,
                                    child: Center(
                                        child: GestureDetector(
                                      onTap: () {
                                        addvalue();
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xffFFA451),
                                      ),
                                    )),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$2,000",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Divider(
                                color: Color(0xffF3F3F3),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "One Pack Contains:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000),
                                      decoration: TextDecoration.underline,
                                      decorationColor: primaryColor,
                                      decorationThickness: 2,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Divider(
                                color: Color(0xffF3F3F3),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 70,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLike = !isLike;
                                      });
                                    },
                                    child: Icon(
                                      isLike
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color: isLike
                                          ? Colors.red
                                          : Color(0xffFFA451),
                                      size: 30.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 250,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return EcommerceHome3();
                                          }));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orange,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                        child: Text(
                                          "Add to basket",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "StoryScript",
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
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

class EcommerceHome3 extends StatefulWidget {
  const EcommerceHome3({super.key});

  @override
  State<EcommerceHome3> createState() => _EcommerceHome3State();
}

class _EcommerceHome3State extends State<EcommerceHome3> {
  TextEditingController streetController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      size: 20.0,
                      color: Color(0xff000000),
                    ),
                    Text(
                      'Go back',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "My Basket",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffFFFFFF),
                  fontFamily: "StoryScript",
                ),
              ),
            ],
          ),
          backgroundColor: primaryColor,
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
      ),
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/Group 06.png"),
                    ),
                    title: Text(
                      "Quinoa fruit salad",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "2packs",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "\$20,000",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Color(0xffF3F3F3),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/Group 03.png"),
                    ),
                    title: Text(
                      "Melon fruit salad",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "2packs",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "\$20,000",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Color(0xffF3F3F3),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/Group 07.png"),
                    ),
                    title: Text(
                      "Tropical fruit salad",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "2packs",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "\$20,000",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  ListTile(
                    title: Text(
                      "Total",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000)),
                    ),
                    subtitle: Text(
                      "\$60,000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff000000)),
                    ),
                    trailing: SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 500,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, bottom: 20, left: 5),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Delivery address",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Color(0xff000000)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          TextFormField(
                                            keyboardType: TextInputType.text,
                                            controller: streetController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              fillColor: Colors.grey.shade200,
                                              filled: true,
                                              hintText:
                                                  "Enter your street Address",
                                              hintStyle: TextStyle(
                                                  color: Colors.black),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.grey.shade200,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.grey.shade200,
                                                ),
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "Please enter your street address";
                                              } else {
                                                return null;
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              bottom: 15,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Number we can call",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Color(0xff000000)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          TextFormField(
                                            keyboardType: TextInputType.phone,
                                            controller: phonenumberController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              fillColor: Colors.grey.shade200,
                                              filled: true,
                                              hintText:
                                                  "Enter youe phone number",
                                              hintStyle: TextStyle(
                                                  color: Colors.black),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.grey.shade200,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.grey.shade200,
                                                ),
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "Please enter your phone number";
                                              } else if (value.length < 11) {
                                                return "phone number must be at least 11 number";
                                              } else {
                                                return null;
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height: 100,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 110,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: primaryColor,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Pay on delivery",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        color: primaryColor,
                                                        fontFamily:
                                                            "StoryScript"),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    _formKey.currentState!
                                                        .save();
                                                  }
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                          "Thank You For Ordering"),
                                                    ),
                                                  );
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return EcommerceHome4();
                                                  }));
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 110,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(
                                                      color: primaryColor,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Pay on Card",
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          color: primaryColor,
                                                          fontFamily:
                                                              "StoryScript"),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "StoryScript",
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EcommerceHome4 extends StatefulWidget {
  const EcommerceHome4({super.key});

  @override
  State<EcommerceHome4> createState() => _EcommerceHome4State();
}

class _EcommerceHome4State extends State<EcommerceHome4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Color(0xffE0FFE5),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xff4CD964),
                child: Icon(
                  Icons.done,
                  size: 50.0,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Congratulations!!!",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your order have been taken and \n       is being attended to",
              style: TextStyle(fontSize: 17, color: Color(0xff000000)),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EcommerceHome5();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    "Track order",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "StoryScript",
                    ),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EcommerceHome2();
                }));
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryColor,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Continue shopping",
                    style: TextStyle(
                        fontSize: 17,
                        color: primaryColor,
                        fontFamily: "StoryScript"),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class EcommerceHome5 extends StatefulWidget {
  const EcommerceHome5({super.key});

  @override
  State<EcommerceHome5> createState() => _EcommerceHome5State();
}

class _EcommerceHome5State extends State<EcommerceHome5> {
  bool ischecked = false;
  bool isRight = false;
  bool isLike = false;
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          flexibleSpace: SizedBox(
            height: 80,
          ),
          title: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      size: 20.0,
                      color: Color(0xff000000),
                    ),
                    Text(
                      'Go back',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Delivery Status",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffFFFFFF),
                    fontFamily: "StoryScript"),
              ),
            ],
          ),
          backgroundColor: primaryColor,
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/Group 10.png"),
                ),
                title: Text(
                  "Order Taken",
                  style: TextStyle(fontSize: 15.0, color: Color(0xff000000)),
                ),
                trailing: Checkbox(
                    value: ischecked,
                    onChanged: (bool? value) {
                      setState(() {
                        ischecked = value!;
                      });
                    }),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/Group 09.png"),
                ),
                title: Text(
                  "Order Is Being Prepared",
                  style: TextStyle(fontSize: 15.0, color: Color(0xff000000)),
                ),
                trailing: Checkbox(
                    value: isRight,
                    onChanged: (bool? value) {
                      setState(() {
                        isRight = value!;
                      });
                    }),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/Group 08.png"),
                ),
                title: Text(
                  "Order Is Being Delivered",
                  style: TextStyle(fontSize: 15.0, color: Color(0xff000000)),
                ),
                subtitle: Text(
                  "Your delivery agent is coming",
                  style: TextStyle(fontSize: 15.0, color: Color(0xff000000)),
                ),
                trailing: Checkbox(
                    value: isLike,
                    onChanged: (bool? value) {
                      setState(() {
                        isLike = value!;
                      });
                    }),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/Rectangle 45.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Checkbox(
                    value: isEmpty,
                    onChanged: (bool? value) {
                      setState(() {
                        isEmpty = value!;
                      });
                    }),
                title: Text(
                  "Order Received",
                  style: TextStyle(fontSize: 15.0, color: Color(0xff000000)),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EcommerceHome6();
                      }));
                    },
                    icon: Icon(
                      Icons.more_horiz,
                      color: Color(0xffFFE3C9),
                      size: 30.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EcommerceHome6 extends StatefulWidget {
  const EcommerceHome6({super.key});

  @override
  State<EcommerceHome6> createState() => _EcommerceHome6State();
}

class _EcommerceHome6State extends State<EcommerceHome6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      size: 20.0,
                      color: Color(0xff000000),
                    ),
                    Text(
                      'Go back',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Delivery Status",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffFFFFFF),
                    fontFamily: "StoryScript"),
              ),
            ],
          ),
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/Group 06.png"),
              ),
              title: Text(
                "Quinoa fruit salad",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "2packs",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                "\$20,000",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 500,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20, left: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Card Holders Name",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Color(0xff000000)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.grey.shade200,
                                      filled: true,
                                      hintText: "Adolphus Chris",
                                      hintStyle: TextStyle(color: Colors.black),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      bottom: 15,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Card Number",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Color(0xff000000)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.grey.shade200,
                                      filled: true,
                                      hintText: "Enter your Card number",
                                      hintStyle: TextStyle(color: Colors.black),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff000000)),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              color: Color(0xffF3F1F1),
                                              borderRadius:
                                                  BorderRadius.horizontal(),
                                            ),
                                            child: Center(
                                                child: Text(
                                              "10/30",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xff000000)),
                                            )),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            "CCV",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff000000)),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              color: Color(0xffF3F1F1),
                                              borderRadius:
                                                  BorderRadius.horizontal(),
                                            ),
                                            child: Center(
                                                child: Text(
                                              "123",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xff000000)),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Center(
                                        child: Container(
                                          height: 50,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xffFFFFFF),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Complete Order",
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontFamily: "StoryScript",
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Text(
                          "Complete Order",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "StoryScript",
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class EContainer extends StatefulWidget {
  String imageurl, text, value;
  final int color;
  EContainer({
    required this.imageurl,
    required this.text,
    required this.value,
    required this.color,
  });
  @override
  State<EContainer> createState() => _EContainerState();
}

class _EContainerState extends State<EContainer> {
  int count = 0;
  void addvalue() {
    setState(() {
      count++;
    });
  }

  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 170,
      decoration: BoxDecoration(
        color: Color(widget.color),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xffF3F1F1),
            blurRadius: 50,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLike = !isLike;
                    });
                  },
                  child: Icon(
                    isLike ? Icons.favorite : Icons.favorite_border_outlined,
                    color: isLike ? Colors.red : Color(0xffFFA451),
                    size: 30.0,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(widget.imageurl),
            ),
            SizedBox(
              height: 10,
            ),
            Text(widget.text),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.value,
                  style: TextStyle(color: Color(0xffFFA451)),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.orange.shade100,
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      addvalue();
                    },
                    child: Icon(
                      Icons.add,
                      color: Color(0xffFFA451),
                    ),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}