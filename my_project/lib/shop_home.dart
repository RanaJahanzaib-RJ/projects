import 'package:flutter/material.dart';
import 'package:my_project/global/colors.dart';

void main() {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ShoseApp",
      debugShowCheckedModeBanner: false,
      home: ShopDore(),
    );
  }
}

class ShopDore extends StatefulWidget {
  const ShopDore({super.key});

  @override
  State<ShopDore> createState() => _ShopDoreState();
}

class _ShopDoreState extends State<ShopDore> {
  int _currentNav = 0;

  void navigateBottomNavBar(int index) {
    setState(() {
      _currentNav = index;
    });
  }

  final List<Widget> Dores = [
    ShopHome(),
    Center(
      child: Text("Reels"),
    ),
    Center(
      child: Text("favorite"),
    ),
    Center(
      child: Text("Cart"),
    ),
    Center(
      child: Text("Setting"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
      floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xff7ACFFF),
              child: Icon(
                Icons.home_outlined,
                size: 40.0,
                color: triColor,
              ),
            ),
      body: Dores[_currentNav],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: triColor,
        onTap: navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: triColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.line_axis_outlined,
              size: 30.0,
              color: secondaryColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: 30.0,
              color: secondaryColor,
            ),
            label: "",
          ),
         
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 30.0,
              color: secondaryColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30.0,
              color: secondaryColor,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}

class ShopHome extends StatefulWidget {
  const ShopHome({super.key});
  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  final List<Map<String, dynamic>> pages = [
    {
      "Name": "Blue",
      "ColorName": Color(0xff42B1EF),
      "Price": 220,
      "imageurl": "assets/Group 27.png",
    },
    {
      "Name": "White",
      "ColorName": Color(0xff7ACFFF),
      "Price": 220,
      "imageurl": "assets/Group 28.png",
    },
    {
      "Name": "Black",
      "ColorName": Color(0xffECEF42),
      "Price": 220,
      "imageurl": "assets/Group 29.png",
    },
    {
      "Name": "Black",
      "ColorName": Color(0xffFC64D1),
      "Price": 220,
      "imageurl": "assets/Group 30.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 30.0,
            color: secondaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.dehaze_rounded,
              size: 30.0,
              color: secondaryColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nike shoe store",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "search",
                    fillColor: Color(0xffF8F6F6),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey.shade300),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Color(0xff818181),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffF8F6F6),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffF8F6F6),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 30,
                    ),
                    itemCount: pages.length,
                    itemBuilder: (context, index) {
                      final page = pages[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ContainerBlock(color:  page["ColorName"]);
                          }));
                        },
                        child: Hero(
                          tag: "keyword",
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: index == 1 || index == 2 ? 20 : 0,
                                top: index == 1 || index == 2 ? 20 : 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: page["ColorName"],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              page["Name"],
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: secondaryColor),
                                            ),
                                            Text("A apir"),
                                          ],
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.check_circle_outlined,
                                          size: 30.0,
                                          color: secondaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Image.network(page["imageurl"]),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "\$ ${page["Price"]}.00",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: secondaryColor),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerBlock extends StatefulWidget {
  Color color;
   ContainerBlock({super.key,required this.color});

  @override
  State<ContainerBlock> createState() => _ContainerBlockState();
}

class _ContainerBlockState extends State<ContainerBlock> {
  bool ischecked = true;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 840,
          decoration: BoxDecoration(
            color: widget.color,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30.0,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: "keyword",
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/Group 27.png"))),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 457,
                decoration: BoxDecoration(
                  color: triColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "White shoe",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: secondaryColor),
                        ),
                        subtitle: Text(
                          "1 Pair",
                          style: TextStyle(fontSize: 20, color: secondaryColor),
                        ),
                        trailing: Text(
                          "\$220.00",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: secondaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Product Description",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: secondaryColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Color(0xff42B1EF),
                              ),
                            ),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      ischecked = !ischecked;
                                    });
                                  },
                                  icon: Icon(
                                    ischecked
                                        ? Icons.favorite_border_outlined
                                        : Icons.favorite,
                                    color: ischecked
                                        ? Colors.grey
                                        : Color(0xff42B1EF),
                                    size: 30.0,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff42B1EF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: triColor),
                                )),
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
      ),
    );
  }
}
