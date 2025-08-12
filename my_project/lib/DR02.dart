import 'package:flutter/material.dart';
import 'package:my_project/DR01.dart';
import 'package:my_project/WallpaperCategorie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Specialist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchSpecialistScreen(),
    );
  }
}

class SearchSpecialistScreen extends StatefulWidget {
  @override
  _SearchSpecialistScreenState createState() => _SearchSpecialistScreenState();
}

class _SearchSpecialistScreenState extends State<SearchSpecialistScreen> {
  String? selectedDoctor;
  String? selectedArea;
  String? selectedDoctorType;
  DateTime? selectedDate;
   List <String>NameList=["DR.MUSTAFA UMAR", "DR.ISMAIL KHAN", "DR.MOMEN ALI", "DR.RABEA KHALID", "DR.AMNA KHAN",];
  List<String> areaList = ['Lahore', 'Karachi', 'Islamabad',"Multan","DGKHAN","Bahawalpur","LAYYAH","SialKot"];
  List<String> doctorList = ['Cardiologist', 'Dentist', 'Neurologist',"Psychiatrist","Pediatrician"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Search Here",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search Your",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Specialist",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Doctor Name",
                border: OutlineInputBorder(),
              ),
              value: selectedDoctor,
              items:NameList.map((String NameList){
                  return DropdownMenuItem<String>(
                    value: NameList,
                    child: Text(NameList),
                  );
              }
              ).toList(),
               onChanged: (value){
                setState(() {
                  selectedDoctor=value;
                });
               }
               ),
            SizedBox(height: 15,),
            // Area Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Select Area",
                border: OutlineInputBorder(),
              ),
              value: selectedArea,
              items: areaList.map((String area) {
                return DropdownMenuItem<String>(
                  value: area,
                  child: Text(area),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedArea = value;
                });
              },
            ),
            SizedBox(height: 15),

            // Doctor Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Doctor, Specialist",
                border: OutlineInputBorder(),
              ),
              value: selectedDoctorType,
              items: doctorList.map((String doctor) {
                return DropdownMenuItem<String>(
                  value: doctor,
                  child: Text(doctor),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDoctorType = value;
                });
              },
            ),
            SizedBox(height: 15),

            // Date Picker Field
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: "Select Date",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
              controller: TextEditingController(
                text: selectedDate != null
                    ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                    : '',
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030),
                );
                if (pickedDate != null) {
                  setState(() {
                    selectedDate = pickedDate;
                  });
                }
              },
            ),
            SizedBox(height: 25),

            // Search Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Add search logic here
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SearchScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text("Search", style: TextStyle(fontSize: 16,color: Colors.white
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        title: WidgetSpecialist(),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,size: 30.0,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.sms_outlined,color: Colors.black,size: 30.0,),),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    height: 230,
                    width: 230,
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                  ),
                 child: FloatingActionButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                     return DRTYPES();
                  }));
                 },
                 backgroundColor:Color(0xfff5f8fd) ,
                child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                     Text("Dr. Mustafa UMAR",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                     Text("  Neurosurge Specialist",style: TextStyle(fontSize: 13,color: Colors.black),), 
                     Container(
                      height: 30,
                      width: 100,
                     decoration: BoxDecoration(
                      image: DecorationImage(image: 
                      NetworkImage
    ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"), 

                     ),
                     ),
                     ),
                         SizedBox(height: 10,),     
                        Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("8  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                         SizedBox(height: 10,),
                        Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("1.08K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                  ),
                     Container(
                            height: 100,
                             width: 70,
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
                  ),         
                  ),
                  SizedBox(width: 13,),
                     Container(
                    height: 230,
                    width: 230,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                 ),
                   child: FloatingActionButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return DRTYPE1();
                  }));
                                      },
                                    backgroundColor:Color(0xfff5f8fd) ,
                                    child: Row(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Column(
                                           children: [
                                          Text("Dr. Ismail ALi",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                          Text("  Psychiatrist Specialist",style: TextStyle(fontSize: 13,color: Colors.black),), 
                                          SizedBox(height: 10,),
                                          Container(
                                           height: 30,
                                           width: 100,
                                          decoration: BoxDecoration(
                                           image: DecorationImage(image: 
                                           NetworkImage
  ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),                                       
                                          ),
                                          ),
                                          ),     
                       SizedBox(height: 10,),
                        Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("3 Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 10,),
                        Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("10.07K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                           ],
                                         ),
                                       ),
                             Container(
                            height: 100,
                             width: 70,
                         decoration: BoxDecoration(
                         image: DecorationImage(
                         fit: BoxFit.cover,
                        image: NetworkImage
                     ("https://static.vecteezy.com/system/resources/previews/046/680/176/non_2x/an-pakistani-male-doctor-on-isolated-transparent-background-png.png"),
                        ),
                         borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                     ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    height: 230,
                    width: 230,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                   ),
                   child: FloatingActionButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return DRTYPE2();
                  }));                
                   },
                   backgroundColor:Color(0xfff5f8fd) ,
                                       child: Row(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Column(
                                           children: [
                                          Text("Dr. MOMEN ALi",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                          Text("  Medicine Specialist",style: TextStyle(fontSize: 13,color: Colors.black),), 
                                          Container(
                                           height: 30,
                                           width: 100,
                                          decoration: BoxDecoration(
                                           image: DecorationImage(image: 
                                           NetworkImage
  ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),                                       
                                          ),
                                          ),
                                          ),     
                                         
                       SizedBox(height: 10,),
                        Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("5  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 10,),
                        Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                         Text("2.07K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                               ],
                             ),
                             ),
                            Container(
                            height: 100,
                             width: 70,
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
                  ),
                  ),
                  SizedBox(width: 13,),
                     Container(
                    height: 230,
                    width: 230,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                     ),
                        child: FloatingActionButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                     return DRTYPE3();
                  }));                   
                        },
             backgroundColor:Color(0xfff5f8fd) ,
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                   Text("Dr. Rabea Khalid",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                   Text("  Dentist Specialist",style: TextStyle(fontSize: 13,color: Colors.black),), 
                   SizedBox(height: 10,),
                   Container(
                    height: 30,
                    width: 100,
                   decoration: BoxDecoration(
                    image: DecorationImage(image: 
                    NetworkImage
  ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),  
                   ),
                   ),
                   ),                       
                    SizedBox(height: 10,),
                      Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                       Text("10  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 10,),
                      Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                       Text("7.08K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),             
                   Container(
                          height: 100,
                           width: 70,
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
             ),
                  ),
                ],
              ),
            ),
          
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
              children: [
              Container(
              height: 230,
              width: 230,
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                 ),
                  child: FloatingActionButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return DRTYPE4();
                  }));               
                  },
             backgroundColor:Color(0xfff5f8fd) ,
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                   Text("Dr. AMNA Khan",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                   Text("  HEART Specialist",style: TextStyle(fontSize: 13,color: Colors.black),), 
                   SizedBox(height: 10,),
                   Container(
                    height: 30,
                    width: 100,
                   decoration: BoxDecoration(
                    image: DecorationImage(image: 
                    NetworkImage
  ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),            
                   ),
                   ),
                   ),     
                     SizedBox(height: 10,),
                      Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),), 
                       Text("5  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 10,),
                      Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                       Text("2.7K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
                   Container(
                          height: 100,
                           width: 70,
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
             ),
               ),
              ],
             ),
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
                            print("Appointment");
                           },),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: IconButton( icon:Icon(Icons.person),iconSize: 30.0,color: Colors.black,
                  highlightColor: Colors.blue,
                   tooltip: "Profile",
                           onPressed: (){
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

class DRTYPES extends StatefulWidget {
  const DRTYPES({super.key});

  @override
  State<DRTYPES> createState() => _DRTYPESState();
}

class _DRTYPESState extends State<DRTYPES> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title:Text("Dr.Mustafa UMAR",style: TextStyle(fontSize: 20,color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                height:200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage
                 ("https://static.vecteezy.com/system/resources/previews/041/408/858/non_2x/ai-generated-a-smiling-doctor-with-glasses-and-a-white-lab-coat-isolated-on-transparent-background-free-png.png"), 
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              ),
               child:
                  Text("📞Voice Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              ),
               child:
                  Text("📱Video Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              ),
               child:
                  Text("💬MESSAGE",style: TextStyle(color: Colors.white),)
              ),
            ),
              ],
            ),
            SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                  
                  children: [
                    Text("Neurosurge Specialist",style: TextStyle(fontSize: 18,color: Colors.black),),
                    Text("     Good Health Clinic, MBBS,FCPS",style: TextStyle(fontSize: 14,color: Colors.black),),
                       Container(
                       height: 30,
                      width: 100,
                     decoration: BoxDecoration(
                    image: DecorationImage(image:NetworkImage
                   ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),                                       
                      ),
                    ),
                   ), 
                   SizedBox(height: 25,),
                   Text("   About Dr.Mustafa UMAR",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ],
                 ),
               ],
             ),
           ), 
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Dr. Mustafa Umar is a highly skilled neurosurgeon, renowned for his precision and dedication in treating complex brain and spine conditions.His patient-centered approach and calm demeanor make him a trusted name among those seeking neurological care.His patient-centered approach and calm demeanor make him a trusted name among those seeking neurological care.Dr. Umar stays updated with the latest surgical techniques and innovations, ensuring top-tier treatment for his patients.He is respected not only for his medical expertise but also for his integrity, compassion, and contributions to the medical community. "
             ,style: TextStyle(fontSize: 15,color: Colors.black),),
           ),
           SizedBox(height: 15,),
                       Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                         Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                           Text("1.08K   ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),  
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("8  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                       SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Reviews",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("2.05K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ],
              ),
                  SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(height: 50,width: double.infinity,
                     child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                     ),
                      child: Text("Book An appointment",style: TextStyle(color: Colors.white,fontSize: 16),),
                     ),
                     ),
                   ),
          ],
        ),
      ),
    );
  }
}

class DRTYPE1 extends StatefulWidget {
  const DRTYPE1({super.key});

  @override
  State<DRTYPE1> createState() => _DRTYPE1State();
}

class _DRTYPE1State extends State<DRTYPE1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title:Text("Dr.Ismail Ali",style: TextStyle(fontSize: 20,color: Colors.black),),
        centerTitle: true,
      ),
         body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                height:200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage
  ("https://static.vecteezy.com/system/resources/previews/046/680/176/non_2x/an-pakistani-male-doctor-on-isolated-transparent-background-png.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              ),
               child:
                  Text("📞Voice Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              ),
               child:
                  Text("📱Video Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              ),
               child:
                  Text("💬MESSAGE",style: TextStyle(color: Colors.white),)
              ),
            ),
              ],
            ),
            SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                  
                  children: [
                    Text("Psychiatrist Specialist",style: TextStyle(fontSize: 18,color: Colors.black),),
                    Text("     Good Health Clinic, MBBS,FCPS",style: TextStyle(fontSize: 14,color: Colors.black),),
                       Container(
                       height: 30,
                      width: 100,
                     decoration: BoxDecoration(
                    image: DecorationImage(image:NetworkImage
                   ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),                                       
                      ),
                    ),
                   ), 
                   SizedBox(height: 25,),
                   Text("   About Dr.Ismail ALi",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ],
                 ),
               ],
             ),
           ), 
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Dr. Ismail Ali is a dedicated psychiatrist, known for his deep understanding of mental health and compassionate care for his patients.He specializes in treating a wide range of psychological disorders, offering effective treatment plans tailored to individual needs.Dr. Ismail is widely respected for his empathetic approach, creating a safe space where patients feel heard and supported.His commitment to mental health awareness and community well-being has made him a valuable figure in the field of psychiatry. "
             ,style: TextStyle(fontSize: 15,color: Colors.black),),
           ),
           SizedBox(height: 15,),
                       Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                         Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                           Text("10.07K   ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),  
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("3  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                       SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Reviews",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("16.03K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ],
              ),
                  SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(height: 50,width: double.infinity,
                     child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                     ),
                      child: Text("Book An appointment",style: TextStyle(color: Colors.white,fontSize: 16),),
                     ),
                     ),
                   ),
          ],
        ),
      ),
    );
  }
}

class DRTYPE2 extends StatefulWidget {
  const DRTYPE2({super.key});

  @override
  State<DRTYPE2> createState() => _DRTYPE2State();
}

class _DRTYPE2State extends State<DRTYPE2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title:Text("Dr.MOMEN ALi",style: TextStyle(fontSize: 20,color: Colors.black),),
        centerTitle: true,
      ),
         body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                height:200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage
    ("https://static.vecteezy.com/system/resources/previews/041/642/113/non_2x/ai-generated-portrait-of-young-doctor-man-happy-smiling-free-png.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              ),
               child:
                  Text("📞Voice Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              ),
               child:
                  Text("📱Video Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              ),
               child:
                  Text("💬MESSAGE",style: TextStyle(color: Colors.white),)
              ),
            ),
              ],
            ),
            SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                  
                  children: [
                    Text("Medicine Specialist",style: TextStyle(fontSize: 18,color: Colors.black),),
                    Text("     Good Health Clinic, MBBS,FCPS",style: TextStyle(fontSize: 14,color: Colors.black),),
                       Container(
                       height: 30,
                      width: 100,
                     decoration: BoxDecoration(
                    image: DecorationImage(image:NetworkImage
                   ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),                                       
                      ),
                    ),
                   ), 
                   SizedBox(height: 25,),
                   Text("   About Dr.MOMEN ALi",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ],
                 ),
               ],
             ),
           ), 
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Dr. Momen Ali is a distinguished internal medicine specialist, known for his accurate diagnoses and evidence-based treatment plans.He is highly respected for his deep knowledge of complex medical conditions and his ability to manage chronic illnesses with care and precision.Dr. Momen Ali's calm and approachable nature makes him a favorite among patients seeking trusted long-term care.His dedication to continuous learning and ethical medical practice sets a benchmark for professionalism in the healthcare community. "
             ,style: TextStyle(fontSize: 15,color: Colors.black),),
           ),
           SizedBox(height: 15,),
                       Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                         Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                           Text("2.07K   ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),  
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("5  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                       SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Reviews",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("4.06K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ],
              ),
                  SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(height: 50,width: double.infinity,
                     child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                     ),
                      child: Text("Book An appointment",style: TextStyle(color: Colors.white,fontSize: 16),),
                     ),
                     ),
                   ),
          ],
        ),
      ),
    );
  }
}

class DRTYPE3 extends StatefulWidget {
  const DRTYPE3({super.key});

  @override
  State<DRTYPE3> createState() => _DRTYPE3State();
}

class _DRTYPE3State extends State<DRTYPE3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title:Text("Dr.Rabea Khalid",style: TextStyle(fontSize: 20,color: Colors.black),),
        centerTitle: true,
      ),
         body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                height:200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage
    ("https://static.vecteezy.com/system/resources/thumbnails/043/372/547/small/doctor-woman-with-stethoscope-keeping-the-arms-crossed-on-isolated-transparent-background-png.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              ),
               child:
                  Text("📞Voice Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              ),
               child:
                  Text("📱Video Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              ),
               child:
                  Text("💬MESSAGE",style: TextStyle(color: Colors.white),)
              ),
            ),
              ],
            ),
            SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                  
                  children: [
                    Text("Dentist Specialist",style: TextStyle(fontSize: 18,color: Colors.black),),
                    Text("     Good Health Clinic, MBBS,FCPS",style: TextStyle(fontSize: 14,color: Colors.black),),
                       Container(
                       height: 30,
                      width: 100,
                     decoration: BoxDecoration(
                    image: DecorationImage(image:NetworkImage
                   ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),                                       
                      ),
                    ),
                   ), 
                   SizedBox(height: 25,),
                   Text("   About Dr.Rabea Khalid",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ],
                 ),
               ],
             ),
           ), 
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Dr. Rabea Khan is a skilled dental specialist, known for her precision, gentle care, and patient-friendly approach to oral healthShe excels in both preventive and restorative dentistry, offering personalized treatment plans for a wide range of dental issues.Dr. Rabea is deeply committed to patient education, ensuring every individual understands the importance of oral hygiene and long-term care.Her professionalism, artistic skill, and compassionate nature have earned her great respect in both the dental community and among her patients "
             ,style: TextStyle(fontSize: 15,color: Colors.black),),
           ),
           SizedBox(height: 15,),
                       Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                         Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                           Text("7.08K   ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),  
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("10 Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                       SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Reviews",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("9.05K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ],
              ),
                  SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(height: 50,width: double.infinity,
                     child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                     ),
                      child: Text("Book An appointment",style: TextStyle(color: Colors.white,fontSize: 16),),
                     ),
                     ),
                   ),
          ],
        ),
      ),
    );
  }
}

class DRTYPE4 extends StatefulWidget {
  const DRTYPE4({super.key});

  @override
  State<DRTYPE4> createState() => _DRTYPE4State();
}

class _DRTYPE4State extends State<DRTYPE4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title:Text("Dr.AMNA KHAN",style: TextStyle(fontSize: 20,color: Colors.black),),
        centerTitle: true,
      ),
         body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                height:200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage
   ("https://static.vecteezy.com/system/resources/thumbnails/046/680/105/small/an-pakistani-female-doctor-on-isolated-transparent-background-png.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              ),
               child:
                  Text("📞Voice Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              ),
               child:
                  Text("📱Video Call",style: TextStyle(color: Colors.white),)
              ),
            ),
            SizedBox(width: 10,),
                   SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              ),
               child:
                  Text("💬MESSAGE",style: TextStyle(color: Colors.white),)
              ),
            ),
              ],
            ),
            SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                  
                  children: [
                    Text("Cardialogy Specialist",style: TextStyle(fontSize: 18,color: Colors.black),),
                    Text("     Good Health Clinic, MBBS,FCPS",style: TextStyle(fontSize: 14,color: Colors.black),),
                       Container(
                       height: 30,
                      width: 100,
                     decoration: BoxDecoration(
                    image: DecorationImage(image:NetworkImage
                   ("https://static.vecteezy.com/system/resources/thumbnails/013/166/225/small/3d-visual-of-the-five-5-star-sign-star-rating-icon-symbol-for-pictogram-apps-website-or-graphic-design-element-illustration-of-the-rating-4-star-format-png.png"),                                       
                      ),
                    ),
                   ), 
                   SizedBox(height: 25,),
                   Text("   About Dr.AMNA KHAN",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ],
                 ),
               ],
             ),
           ), 
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Dr. Amna Khan is a highly respected cardiologist, known for her expertise in diagnosing and treating heart-related conditions with precision.She is committed to providing patient-centered care, focusing on both prevention and advanced treatment of heart diseases.Dr. Amna’s calm demeanor and thorough approach have earned her the trust and admiration of her patients and peers alike.Her contributions to heart health awareness and compassionate care make her a true asset to the medical community "
             ,style: TextStyle(fontSize: 15,color: Colors.black),),
           ),
           SizedBox(height: 15,),
                       Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                         Text("Patients",style: TextStyle(fontSize: 18,color: Colors.black),), 
                           Text("2.7K   ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),  
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Experience",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("5  Years    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                       SizedBox(width: 10,),
                  Column(
                    children: [
                       Text("Reviews",style: TextStyle(fontSize: 18,color: Colors.black),),     
                       Text("3.05K    ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ],
              ),
                  SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(height: 50,width: double.infinity,
                     child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                     ),
                      child: Text("Book An appointment",style: TextStyle(color: Colors.white,fontSize: 16),),
                     ),
                     ),
                   ),
          ],
        ),
      ),
    );
  }
}