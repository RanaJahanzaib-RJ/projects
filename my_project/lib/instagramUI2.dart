import 'package:flutter/material.dart';
import 'package:my_project/InstagramUI.dart';

class InstagramScreen extends StatefulWidget {
  const InstagramScreen({super.key});

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
  int _currentIndex = 0;
  void_navigateBottomNavBar(int index){
  setState(() {
    _currentIndex = index;
    // Add navigation logic here if needed
  });
  }
  final List<Widget> _Screen =[
    INSTAHOME(),
    INSTASEARCH(),
    INSTASHOP(),
    Center(child: Text("Reels"),),
    INSTAPROFILE(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _Screen[_currentIndex],
    backgroundColor: Colors.white,
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap:void_navigateBottomNavBar,
    type: BottomNavigationBarType.fixed,
      items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.black),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: Colors.black),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_call_outlined, color: Colors.black),
          label: 'reels',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.black),
          label: 'Profile',
        ),
      ],
      ),
    );
  }
}

class INSTAHOME extends StatefulWidget {
  const INSTAHOME({super.key});

  @override
  State<INSTAHOME> createState() => _INSTAHOMEState();
}

class _INSTAHOMEState extends State<INSTAHOME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
     title:
      Text("Instagram", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
     actions: [
      Icon(Icons.add,  ),
      SizedBox(width: 20,),
      Icon(Icons.favorite,),
      SizedBox(width: 20,),
      Icon(Icons.share,),
     ],
     ),
       body:  
         Column(
           children: [
           Row(
           children: [
             Circles(text: "Ahmad", imageurl:"https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg"),
             Circles(text: "jahanzaib", imageurl:"https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg"),
             Circles(text: "Salah", imageurl:"https://images.pexels.com/photos/1486064/pexels-photo-1486064.jpeg"),
             Circles(text: "Ibrahim", imageurl:"https://images.pexels.com/photos/17901276/pexels-photo-17901276.jpeg"),
             Circles(text: "Ismail", imageurl:"https://images.pexels.com/photos/7089664/pexels-photo-7089664.jpeg"),
             Circles(text: "Essa", imageurl:"https://images.pexels.com/photos/26569078/pexels-photo-26569078.jpeg"),
       
           ],
           ),
            Expanded(
              child: ListView.builder(
              itemCount:6,
              itemBuilder: (context, index) {
              return Column(
              children: [
             POSTCARDS(text: 'Ahmad', imageurl:"https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg"),
             POSTCARDS(text: "jahanzaib", imageurl:"https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg"),
             POSTCARDS(text: "Salah", imageurl:"https://images.pexels.com/photos/1486064/pexels-photo-1486064.jpeg"),
             POSTCARDS(text: "Ibrahim", imageurl:"https://images.pexels.com/photos/17901276/pexels-photo-17901276.jpeg"),
             POSTCARDS(text: "Ismail", imageurl:"https://images.pexels.com/photos/7089664/pexels-photo-7089664.jpeg"),
             POSTCARDS(text: "Essa", imageurl:"https://images.pexels.com/photos/26569078/pexels-photo-26569078.jpeg"),
              ],
               );
              },
              ),
            ),
           ],
       ),
    );
  }
}


class INSTASEARCH extends StatefulWidget {
  const INSTASEARCH({super.key});

  @override
  State<INSTASEARCH> createState() => _INSTASEARCHState();
}

class _INSTASEARCHState extends State<INSTASEARCH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: TextField(
     keyboardType: TextInputType.multiline,
     decoration: InputDecoration(
     hintText: 'Search',
     fillColor: Colors.grey[100],
     filled: true,
     prefixIcon: Icon(Icons.search),
     focusedBorder: OutlineInputBorder(
     borderRadius: BorderRadius.circular(16),
     borderSide: BorderSide(
     color: Colors.grey.shade100,
     ),
     ),
     enabledBorder: OutlineInputBorder(
     borderRadius: BorderRadius.circular(16),
     borderSide: BorderSide(
     color: Colors.grey.shade100,
     ),
     ),
     ),
    ),
    ),
    body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) ,
    // itemCount: 20, 
    itemBuilder: (context,index){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
      color: Colors.deepPurple[100],
      ),
    );
    }
    ),
    );
  }
}

class INSTASHOP extends StatefulWidget {
  const INSTASHOP({super.key});

  @override
  State<INSTASHOP> createState() => _INSTASHOPState();
}

class _INSTASHOPState extends State<INSTASHOP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.grey[100],
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text('Shop',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Row(
        children: [
          Icon(Icons.calendar_today),
          SizedBox(width: 20,),
          Icon(Icons.menu),
        ],
        ),
      ],
      ),
    ),
    ),
    body: Column(
    children: [
       TextField(
     keyboardType: TextInputType.multiline,
     decoration: InputDecoration(
     hintText: 'Search',
     fillColor: Colors.grey[100],
     filled: true,
     prefixIcon: Icon(Icons.search),
     focusedBorder: OutlineInputBorder(
     borderRadius: BorderRadius.circular(16),
     borderSide: BorderSide(
     color: Colors.grey.shade100,
     ),
     ),
     enabledBorder: OutlineInputBorder(
     borderRadius: BorderRadius.circular(16),
     borderSide: BorderSide(
     color: Colors.grey.shade100,
     ),
     ),
     ),
    ),
    SizedBox(height: 5,),
        Expanded(
          child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
           itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.pink,
              ),
            );
           }
           ),
        ),
    ],
    ),
    );
  }
}
  
  class INSTAPROFILE extends StatefulWidget {
  const INSTAPROFILE({super.key});

  @override
  State<INSTAPROFILE> createState() => _INSTAPROFILEState();
}

class _INSTAPROFILEState extends State<INSTAPROFILE> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
       body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.cover,
              image:NetworkImage('https://images.pexels.com/photos/26569078/pexels-photo-26569078.jpeg')),
               color: Colors.grey[100],
               shape: BoxShape.circle,
              ),
              ),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                    Text("237",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                     Text("posts"),
                  ],
                ),
                     Column(
                  children: [
                    Text("3930",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                     Text("follower"),
                  ],
                ),
                    Column(
                  children: [
                    Text("40",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                     Text("Following"),
                  ],
                ),
                ],
              ),
              ),
            ],
          ),
        ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
               children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text("Rana Jahanzaib",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("Flutter Developer",style: TextStyle(fontSize: 16),),
                  Text("Flutter Developer at MINOR BUGS",style: TextStyle(fontSize: 16),),
                  ],
                 ),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                     ),
                   child: Center(child: Text("Edit Profile",)),
                     ),
                   ),
                   ),
                   Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                     ),
                   child: Center(child: Text("Add Tools",)),
                     ),
                   ),
                   ),
                    Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                     ),
                   child: Center(child: Text("Insights",)),
                     ),
                   ),
                   ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Circles(text: "Ahmad", imageurl:"https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg"),
            Circles(text: "Jahanzaib", imageurl:"https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg"),
            Circles(text: "Salah", imageurl:"https://images.pexels.com/photos/1486064/pexels-photo-1486064.jpeg"),
            Circles(text: "Ibrahim", imageurl:"https://images.pexels.com/photos/17901276/pexels-photo-17901276.jpeg"),
            Circles(text: "Ismail", imageurl:"https://images.pexels.com/photos/26569078/pexels-photo-26569078.jpeg"),
            ],
            ),
            TabBar(
            tabs:[
              Icon(Icons.grid_3x3_outlined),
              Icon(Icons.video_call_outlined),
              Icon(Icons.shopping_bag_outlined),
              Icon(Icons.person_outline),
            ], 
            ),
          
        ],
       ),
      ),
    );
  }
}