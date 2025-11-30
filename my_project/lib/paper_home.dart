import 'package:flutter/material.dart';
import 'package:my_project/global/colors.dart';

class PaperHome extends StatefulWidget {
  const PaperHome({super.key});

  @override
  State<PaperHome> createState() => _PaperHomeState();
}

class _PaperHomeState extends State<PaperHome> {
  int? selectedPaperIndext;
  int? selectButtonIndex;
  final List<String> date = [
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
  ];
  final List<String> days = [
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];
  final List<String> month = ["Apr", "Apr", "Apr", "Apr", "Apr", "Apr"];

  final List<String> button = [
    "All",
    "Important",
    "Lecture",
    "To-do-List",
  ];

  final List<Map<String, dynamic>> papers = [
    {
      "Name": "Products list",
      "Color": Color(0xffE0E7F4),
      "Content":
          "Review of Products Action Items Product Development Update User Feedback  Customer Insights Competitive Analysis Roadmap Discussion  ",
    },
    {
      "Name": "To-do Lists",
      "Color": Color(0xffF5EBF2),
      "Content":
          "Reply to emails Prepare presentation slides for the marketing meeting Conduct research on competitor products Schedule and plan customer interviews Take a break and recharge ",
    },
    {
      "Name": "Shopping List",
      "Color": Color(0xffD1F9DD),
      "Content": "Rice Pasta Cereal Yogurt Cheese Butter  ",
    },
    {
      "Name": "Important",
      "Color": Color(0xffFCF4A5),
      "Content":
          "Summarize the key action items identified during the meeting. Assign responsible team members and set deadlines for each action item.  ",
    },
    {
      "Name": "Notes",
      "Color": Color(0xffFBC8C9),
      "Content":
          "Share insights and findings from recent competitive analysis. ",
    },
    {
      "Name": "Vacation",
      "Color": Color(0xffCCEDED),
      "Content":
          " Choose a nearby destination based on your interests (nature, city, beach, etc.).Set a budget covering travel, accommodation, food, and Set a daily schedule with focused time blocks and short breaks  ",
    },
    {
      "Name": "Important",
      "Color": Color(0xffFCF4A5),
      "Content":
          "Define clear goals and objectives for the day/week.Break tasks into manageable chunks with deadlines.Prioritize tg a method like Eisenhower Matrix or ABCD method.  ",
    },
  ];
  String data = 'no text';
  String description = "write";
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) {
            return DataShow();
          }));
          if (result != '') {
            setState(() {
              data = result;
              description = result; 
            });
          } else {}
       
        },
        
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.add,
          size: 30.0,
          color: secondaryColor,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ListTile(
                title: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for notes",
                    fillColor: Color(0xffE8E8E8),
                    filled: true,
                    hintStyle: TextStyle(color: Color(0xff7C7C7C)),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: secondaryColor,
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffE8E8E8),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xffE8E8E8),
                      ),
                    ),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none,
                      size: 30.0,
                      color: secondaryColor,
                    )),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                    children: List.generate(date.length, (index) {
                  bool isSelected = index == selectedPaperIndext;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedPaperIndext = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.black : Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              days[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: isSelected ? Colors.white : Colors.grey,
                              ),
                            ),
                            Text(
                              date[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            ),
                            Text(
                              month[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: isSelected ? Colors.white : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(button.length, (index) {
                    bool ischecked = index == selectButtonIndex;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectButtonIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                          decoration: BoxDecoration(
                            color:
                                ischecked ? secondaryColor : Colors.transparent,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    button[index],
                                    style: TextStyle(
                                        color: ischecked
                                            ? triColor
                                            : Colors.grey.shade500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.6,
                    ),
                    itemCount: papers.length,
                    itemBuilder: (context, index) {
                      final paper = papers[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PaperDetail(
                              text: description,
                              color: paper["Color"],
                              name: paper["Name"],
                            );
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: paper["Color"],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                     paper["Name"],
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: secondaryColor),
                                  ),
                                  Text(description),
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

class PaperDetail extends StatefulWidget {
  String text, name;
  Color color;
  PaperDetail(
      {super.key, required this.text, required this.color, required this.name});

  @override
  State<PaperDetail> createState() => _PaperDetailState();
}

class _PaperDetailState extends State<PaperDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 840,
              decoration: BoxDecoration(
                color: widget.color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 30.0,
                              color: secondaryColor,
                            )),
                        Spacer(),
                        Icon(
                          Icons.bookmark_added,
                          size: 30.0,
                          color: secondaryColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 30.0,
                          color: secondaryColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.share_outlined,
                          size: 30.0,
                          color: secondaryColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(fontSize: 15, color: secondaryColor),
                    ),
                    Text(DateTime.now().toString()),
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

class DataShow extends StatefulWidget {
  const DataShow({super.key});

  @override
  State<DataShow> createState() => _DataShowState();
}

class _DataShowState extends State<DataShow> {
  List<String> datalist = [];
  List<String> deslist = [];
  final TextEditingController _controller = TextEditingController();
  final TextEditingController desController = TextEditingController();
  final isformkey = GlobalKey<FormState>();

  void addValue() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        datalist.add(_controller.text);
        Navigator.pop(context, _controller.text);
      });
    }
  }
   void sendvalue(){
    if(desController.text.isNotEmpty){
   setState(() {
    deslist.add(desController.text);
    Navigator.pop(context,desController.text); 
   });
    }
   }
 
  void removeValue() {
    setState(() {
      datalist.remove(_controller.text);
      datalist.clear();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: isformkey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30.0,
                            color: secondaryColor,
                          )),
                      Spacer(),
                      Icon(
                        Icons.bookmark_added,
                        size: 30.0,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.favorite_border,
                        size: 30.0,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.send,
                        size: 30.0,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _controller,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add TITLE",
                      fillColor: Color(0xffE8E8E8),
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: () {
                          isformkey.currentState!.validate();
                          isformkey.currentState!.save();
                          addValue();
                        },
                        icon: Icon(
                          Icons.send,
                          size: 30.0,
                          color: primaryColor,
                        ),
                      ),
                      hintStyle: TextStyle(color: Color(0xff7C7C7C)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color(0xffE8E8E8),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color(0xffE8E8E8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    maxLength: 300,
                    maxLines: null,
                    minLines: 5,
                    controller: desController,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add Description",
                      fillColor: Color(0xffE8E8E8),
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: () {
                          isformkey.currentState!.validate();
                          isformkey.currentState!.save();
                          sendvalue();
                        },
                        icon: Icon(
                          Icons.send,
                          size: 30.0,
                          color: primaryColor,
                        ),
                      ),
                      hintStyle: TextStyle(color: Color(0xff7C7C7C)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color(0xffE8E8E8),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color(0xffE8E8E8),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: datalist.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: Colors.amber,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        datalist[index],
                                      ),
                                      Text(DateTime.now().toString()),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                isformkey.currentState!
                                                    .validate();
                                                isformkey.currentState!
                                                    .dispose();
                                                removeValue();
                                              },
                                              icon: Icon(
                                                Icons.delete,
                                                size: 30.0,
                                                color: primaryColor,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                ],
              ),
            ),
          )),
    );
  }
}
