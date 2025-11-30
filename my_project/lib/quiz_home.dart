import 'package:flutter/material.dart';
import 'package:my_project/global/colors.dart';
import 'package:my_project/quizeSplash.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  int currentstate = 0;
  void bottomNavigateBar(index) {
    setState(() {
      currentstate = index;
    });
  }

  final List<Widget> quizScreen = [
    QuizPage4(),
    Center(child: Text("Discover")),
    QuizPage5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: quizScreen[currentstate],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentstate,
        selectedItemColor: getColor,
        backgroundColor: Color(0xffFFF7CC),
        onTap: bottomNavigateBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 40.0,
              color: getColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.change_circle_rounded,
              size: 40.0,
              color: getColor,
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 40.0,
              color: getColor,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

// Home Page

class QuizPage4 extends StatefulWidget {
  const QuizPage4({super.key});

  @override
  State<QuizPage4> createState() => _QuizPage4State();
}

class _QuizPage4State extends State<QuizPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEF99),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hello Georgiette",
                            style: TextStyle(
                                fontSize: 30,
                                color: getColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "StoryScript"),
                          ),
                          Text(
                            "Let’s start your quiz now",
                            style: TextStyle(
                                fontSize: 17,
                                color: getColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Spacer(),
                      ProfileImage(
                        imgurl: "assets/Group 36.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none,
                      hintText: "Search",
                      fillColor: triColor,
                      hintStyle: TextStyle(color: getColor),
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: getColor,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: triColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: triColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ContainerClasses(
                    imgurl: "assets/Group 40.png",
                  ),
                ],
              ),
            ),
            Container(
              height: 370,
              decoration: BoxDecoration(
                color: triColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ContainerClasses(
                          imgurl: "assets/Group 40.png",
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Popular Categories",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: getColor),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return QuizPageDetail();
                                }));
                              },
                              child: Text(
                                "See All",
                                style: TextStyle(fontSize: 17, color: getColor),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 20.0,
                              color: getColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/Group 38.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Stats",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: getColor),
                            ),
                            Spacer(),
                            Text(
                              "See All",
                              style: TextStyle(fontSize: 17, color: getColor),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 20.0,
                              color: getColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xff11686E),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/Group 41.png"))),
                                    ),
                                    Text(
                                      "19 Days",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: triColor),
                                    ),
                                    Text(
                                      "Streek",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: triColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xffD6FC92),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/Group 42.png"))),
                                    ),
                                    Text(
                                      "7 Badges",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: getColor),
                                    ),
                                    Text(
                                      "Achievements",
                                      style: TextStyle(
                                          fontSize: 17, color: getColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Profile Page

class QuizPage5 extends StatefulWidget {
  const QuizPage5({super.key});

  @override
  State<QuizPage5> createState() => _QuizPage5State();
}

class _QuizPage5State extends State<QuizPage5> {
  int? isListed;
  final List<String> buttonName = [
    "Overview",
    "My Statistics",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEF99),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: getColor),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 30.0,
                    color: getColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 690,
            decoration: BoxDecoration(
              color: triColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    ProfileImage(
                      imgurl: "assets/Group 36.png",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Georgiette Ansaah",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: getColor,
                          fontFamily: "StoryScript"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: getColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: triColor),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(buttonName.length, (value) {
                        bool ischecked = value == isListed;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              isListed = value;
                            });
                          },
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: ischecked
                                    ? Color(0xff015055)
                                    : Color(0xffFFF7CC),
                              ),
                              child: Center(
                                child: Text(
                                  buttonName[value],
                                  style: TextStyle(
                                      color: ischecked
                                          ? Color(0xffD6FC92)
                                          : Color(0xff015055)),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      height: 390,
                      decoration: BoxDecoration(
                        color: Color(0xffFFEF99),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Favourite Category",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: getColor),
                                    ),
                                  ],
                                ),
                                ContainerClasses(imgurl: "assets/Group 44.png"),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Achievements (7)",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: getColor),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                RewardContainer(text: "Bolt",write: "Completed quiz in less than 2 minutes.",),
                                SizedBox(height: 10,),
                                RewardContainer(text: "Genius",write: "Completed 10 quizzes with perfect score.",),
                                SizedBox(height: 10,),
                                RewardContainer(text: "Poised",write: "Kept a streak going for 10 days.",),
                                SizedBox(height: 10,),
                                RewardContainer(text: "Achiever",write: "Kept a streak going for 15 days.",),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

// Home Page Detail

class QuizPageDetail extends StatefulWidget {
  const QuizPageDetail({super.key});

  @override
  State<QuizPageDetail> createState() => _QuizPageDetailState();
}

class _QuizPageDetailState extends State<QuizPageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEF99),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 30.0, left: 15, right: 15.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30.0,
                    color: getColor,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Did You Know?",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: getColor),
                    ),
                    Text(
                      "May 13 - May 19",
                      style: TextStyle(color: getColor),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border,
                    size: 30.0,
                    color: getColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    size: 30.0,
                    color: getColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 735,
            decoration: BoxDecoration(
              color: triColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/Group 43.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Gold Coast",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: getColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "In 1482, Ghana was known as the Gold Coast. This name was given to the region by European explorers due to the abundance of gold that could be found there.  ",
                        style: TextStyle(color: getColor, fontSize: 17),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "The Gold Coast became an important trading hub for gold and other commodities, attracting various European powers who sought to exploit its resources.",
                        style: TextStyle(color: getColor, fontSize: 17),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "The name Gold Coast remained in use until Ghana gained independence from British colonial rule in 1957 and adopted its current name.",
                        style: TextStyle(color: getColor, fontSize: 17),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff602400),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "LEARN MORE",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: triColor),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 30,
                                    color: triColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
