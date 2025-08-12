import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_project/DR00.dart';
// import 'package:my_project/ConstraintBox.dart';
import 'package:my_project/DR02.dart';
import 'package:my_project/DR03.dart';
import 'package:my_project/DR04.dart';
import 'package:my_project/WallpaperCategorie.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(DRAPP());
}
class DRAPP extends StatelessWidget {
  const DRAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DRSCReen(),
    );
  }
}
class DRSCReen extends StatefulWidget {
  const DRSCReen({super.key});

  @override
  State<DRSCReen> createState() => _DRSCReenState();
}

class _DRSCReenState extends State<DRSCReen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
             backgroundImage: NetworkImage("https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg"),
              ),
              accountName: Text('Rana Jahanzaib',style: TextStyle(fontSize: 17),),
             accountEmail: Text('Profile,Setting & More',style: TextStyle(fontSize: 10),),   
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
               ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification"),
            ),
                  ListTile(
              leading: Icon(Icons.folder),
              title: Text("My Files"),
            ),
                  ListTile(
              leading: Icon(Icons.group),
              title: Text("Shared with me"),
            ),
                  ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
            ),
                  ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Recent"),
            ),
                  ListTile(
              leading: Icon(Icons.offline_pin),
              title: Text("Offline"),
            ),
                  ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("Upload"),
            ),
                  ListTile(
              leading: Icon(Icons.cloud_upload),
              title: Text("Backups"),
            ),
                  ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
                  ListTile(
              leading: Icon(Icons.reviews),
              title: Text("Review"),
            ),
               ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payments"),
            ),
            Divider(color: Colors.amber,),
              ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings & account"),
            ),
              ListTile(
              title: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(onPressed:()async{
                  SharedPreferences sp =await SharedPreferences.getInstance();
                  sp.clear();
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return DRLOGIN();
                  }));
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(12),bottomLeft: Radius.circular(12),topLeft: Radius.circular(12),),
                ),
                ),
                child:Center(child: Text("LOGOUT",style: TextStyle(fontSize: 18,color: Colors.white),),)),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: widgetDRName(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return  SearchSpecialistScreen();
              }));
            }, icon: Icon(Icons.search,color: Colors.black,size: 30.0,),), 
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(onPressed: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context){
                return DoctorChatScreen();
              })); 
              },icon: Icon(Icons.sms_outlined,color: Colors.black,size: 30.0,),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                     Container(
                    height: 200,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    backgroundColor: Colors.blue,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Looking For Your Desire",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 55),
                                      child: Text("Specialist Doctor?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    SizedBox(height: 35,),
                              Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: Text("DR.MOMEN ALi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                          SizedBox(width: 5,),
                              Text("Medicine & Health Specialist",style: TextStyle(fontSize: 17,color: Colors.white),),
                         Padding(
                           padding: const EdgeInsets.only(right: 65),
                           child: Text("Good Health Clinic",style: TextStyle(fontSize: 17,color: Colors.white),),
                         ),
                       ],
                      ),
                      SizedBox(width: 35,),
                           Container(
                                  height: 170,
                                  width: 90,
                                 decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                  image: NetworkImage
             ("https://static.vecteezy.com/system/resources/previews/041/642/113/non_2x/ai-generated-portrait-of-young-doctor-man-happy-smiling-free-png.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                 ),
                                ),
                          ],
                        ),
                      ],
                    ),
                    ),
                     ),
                     SizedBox(width:15 ,),
                          Container(
                    height: 200,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    backgroundColor: Colors.blue,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Looking For Your Desire",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 55),
                                      child: Text("Specialist Doctor?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    SizedBox(height: 35,),
                              Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: Text("DR.Rabea Khalid",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                          SizedBox(width: 5,),
                              Text("Medicine & Dental Specialist",style: TextStyle(fontSize: 17,color: Colors.white),),
                         Padding(
                           padding: const EdgeInsets.only(right: 65),
                           child: Text("Good Health Clinic",style: TextStyle(fontSize: 17,color: Colors.white),),
                         ),
                       ],
                      ),
                      SizedBox(width: 35,),
                           Container(
                                  height: 170,
                                  width: 90,
                                 decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                  image: NetworkImage
             ("https://static.vecteezy.com/system/resources/thumbnails/043/372/547/small/doctor-woman-with-stethoscope-keeping-the-arms-crossed-on-isolated-transparent-background-png.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                 ),
                                ),
                          ],
                        ),
                      ],
                    ),
                    ),
                     ),
                          SizedBox(width:15 ,),
                                   Container(
                    height: 200,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    backgroundColor: Colors.blue,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Looking For Your Desire",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 55),
                                      child: Text("Specialist Doctor?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    SizedBox(height: 35,),
                              Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: Text("DR.AMNA KHAN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                          SizedBox(width: 5,),
                              Text("Medicine & Heart Specialist",style: TextStyle(fontSize: 17,color: Colors.white),),
                         Padding(
                           padding: const EdgeInsets.only(right: 65),
                           child: Text("Good Health Clinic",style: TextStyle(fontSize: 17,color: Colors.white),),
                         ),
                       ],
                      ),
                      SizedBox(width: 35,),
                           Container(
                                  height: 170,
                                  width: 90,
                                 decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                  image: NetworkImage
             ("https://static.vecteezy.com/system/resources/thumbnails/046/680/105/small/an-pakistani-female-doctor-on-isolated-transparent-background-png.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                 ),
                                ),
                          ],
                        ),
                      ],
                    ),
                    ),
                     ),
                          SizedBox(width:15 ,),
                            Container(
                    height: 200,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    backgroundColor: Colors.blue,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Looking For Your Desire",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 55),
                                      child: Text("Specialist Doctor?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    SizedBox(height: 35,),
                              Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: Text("DR.Mustafa UMAR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                          SizedBox(width: 5,),
                              Text("Medicine & Neuro Specialist",style: TextStyle(fontSize: 17,color: Colors.white),),
                         Padding(
                           padding: const EdgeInsets.only(right: 65),
                           child: Text("Good Health Clinic",style: TextStyle(fontSize: 17,color: Colors.white),),
                         ),
                       ],
                      ),
                      SizedBox(width: 35,),
                           Container(
                                  height: 170,
                                  width: 90,
                                 decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                  image: NetworkImage
      ("https://static.vecteezy.com/system/resources/previews/041/408/858/non_2x/ai-generated-a-smiling-doctor-with-glasses-and-a-white-lab-coat-isolated-on-transparent-background-free-png.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(16),
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
                ],
              ),
            ),
                 SizedBox(height: 25,),
               WidgetCDFR(),
               SizedBox(height: 25,),
                WidgetCDB(),
           SizedBox(height: 15,),
           WidgetAvailable(),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:  WidgetToggle() ,
            ),
               SizedBox(height: 25,),
          Container(
    color: Colors.grey.shade300,
    child: Column(
      children: [
         Padding(
           padding: const EdgeInsets.only(right: 50),
           child: Row(
                children: [
           Padding(
             padding: const EdgeInsets.only(left: 50),
             child: IconButton( icon:Icon(Icons.home,),iconSize: 30.0,color: Colors.black,
                  highlightColor: Colors.blue,
                   tooltip: "Home",
             onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return DRSCReen();
              }));
              print("Home");
             },),
           ),
        
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: IconButton( icon:Icon(Icons.group),iconSize: 30.0,color: Colors.black,
                  highlightColor: Colors.blue,
                   tooltip: "Doctors",
                           onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context){
                return Doctor();
              }));
                            print("Doctors"); 
                           },),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: IconButton( icon:Icon(Icons.calendar_today),iconSize: 30.0,color: Colors.black,
                  highlightColor: Colors.blue,
                   tooltip: "Appointment",
                           onPressed: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context){
                return AppoScreen();
              }));       
                            print("Appointment");
                           },),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: IconButton( icon:Icon(Icons.person),iconSize: 30.0,color: Colors.black,
                  highlightColor: Colors.blue,
                   tooltip: "Profile",
                           onPressed: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context){
                return ProfileDP();
              }));
                            print("Profile");
                           },),
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
    );
  }
}