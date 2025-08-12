import 'package:flutter/material.dart';
import 'package:my_project/DR04.dart';

void main(){
  runApp(AppoApp());
}
class AppoApp extends StatelessWidget {
  const AppoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: AppoScreen(),
    );
  }
}
class AppoScreen extends StatefulWidget {
  const AppoScreen({super.key});

  @override
  State<AppoScreen> createState() => _AppoScreenState();
}

class _AppoScreenState extends State<AppoScreen> {
  int?selectedDateIndex = 3;  // Initially selected date index (18 Jul)
  int?selectedSlotIndex;
  final List<String> date = ["15", "16", "17","18","19", ];
  final List<String> days = ["Thu","Fri","Sat","Sun","Mon",];
  final List<String> timeSlots = [
    "10:10 am", "10:30 am", "10:50 am",
    "2:10 pm", "2:50 pm",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,size: 30.0,)),
        title: Text("Appoinment",style: TextStyle(fontSize: 18,color: Colors.black),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
           children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(date.length,(index){
                bool isSelected = index == selectedDateIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                       selectedDateIndex=index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 14),
                    decoration: BoxDecoration(
                      color: isSelected? Colors.blue :Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
              Text(date[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: isSelected? Colors.white:Colors.black,),),
               Text(days[index],style: TextStyle(fontSize: 16,color: isSelected? Colors.white:Colors.grey,),),
                      ],
                    ),
                  ),
                );
              }
              ),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Slots",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 15,),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(timeSlots.length, (index){
              bool isSelected = index == selectedSlotIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSlotIndex=index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isSelected? Colors.blue:Colors.white,
                    border: Border.all(
                      color: isSelected? Colors.blue:Colors.grey,
                    ),
                  ),
                  child: Text(timeSlots[index],style: TextStyle(color: isSelected ? Colors.white : Colors.black,),),
                ),
              );
              }
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 40,
              width: 200,
             child: ElevatedButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                return MyAppointment();
              }));
             },
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
             ),
              child: Text("Check Appoinment",style: TextStyle(color: Colors.white),)), 
            ),
             SizedBox(height: 30,),
            SizedBox(
              height: 50,width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(selectedSlotIndex !=null){
                  ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text("Appoinment Confirmed!"),
                   ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
              ),
               child:Text("Confirm Appoinment",style: TextStyle(color: Colors.white),
               ),
               ),
            ),
          ],
        ),
      ),
    //  backgroundColor: Color(0xFFEFF4FF), // Light Background color
    );
  }
}

class MyAppointment extends StatefulWidget {
  const MyAppointment({super.key});

  @override
  State<MyAppointment> createState() => _MyAppointmentState();
}

class _MyAppointmentState extends State<MyAppointment> {
  int? IsoDateFN;
  final List<String> datedt=["Date",   "Time",   "Doctor",   "Type", "City",  "place",];
  final List <String> Confirmedfn=[ "15/7/2025", "10:30 am", "Dr.AMNA KHAN", "Cardialogist", "LAYYAH","City Clinic",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,size: 30.0,)),
        title: Text("MY Appoinment",style: TextStyle(fontSize: 18,color: Colors.black),),
        centerTitle: true,
      ),  
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:  Column(
            children: [
              Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: List.generate(datedt.length, (index){
                 bool isSelected = index == IsoDateFN;
                 return GestureDetector(
                  onTap: () {
                    setState(() {
                      IsoDateFN=index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 14),
                    decoration: BoxDecoration(
                      color: isSelected? Colors.blue.shade200:Colors.white,
                      borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected? Colors.blue:Colors.grey,
                      ),
                    ),
                    child:
                        Column(
                          children: [
                         Text(datedt[index].toString(),style: TextStyle(color: isSelected? Colors.white:Colors.black,),),
                         Text(Confirmedfn[index],style: TextStyle(color: isSelected? Colors.blue:Colors.grey,fontWeight: FontWeight.bold),),
                     
                          ],
                        ),    
                  ),
                 );
                  }
                  ),
                ),
                     SizedBox(height: 15,),
                   SizedBox(
                  height: 50,width: 120,
                child: ElevatedButton(onPressed: (){
                  if(IsoDateFN!=null){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Your Appointment is Cancel"),),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                 child: Text("CANCEL",style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
     
    );
  }
}

class ProfileDP extends StatefulWidget {
  const ProfileDP({super.key});

  @override
  State<ProfileDP> createState() => _ProfileDPState();
}

class _ProfileDPState extends State<ProfileDP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEAF0FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,size: 30.0,)),
        title: Text("MY Profile",style: TextStyle(fontSize: 18,color: Colors.black),),
        actions: [
          IconButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return DoctorSettingsScreen();
              }));
          }, icon: Icon(Icons.toll_outlined))
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage("https://static.vecteezy.com/system/resources/previews/041/642/170/non_2x/ai-generated-portrait-of-handsome-smiling-young-man-with-folded-arms-isolated-free-png.png")
                ),
                ),
              ),
              SizedBox(height: 20,),
             TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "NAME",
                hintText: "Enter Your NAME",
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                border: OutlineInputBorder(),
              ),
             ),
                  SizedBox(height: 8,),
             TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "EMAIL",
                hintText: "Enter Your EMAIL",
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                border: OutlineInputBorder(),
              ),
             ),
                  SizedBox(height: 8,),
             TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "PHONE",
                hintText: "Enter Your PHONE NUMBER ",
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                border: OutlineInputBorder(),
              ),
             ),
             SizedBox(height: 8,),
             TextFormField(
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                labelText: "STREETADRESS",
                hintText: "Enter Your STREETADRESS",
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                border: OutlineInputBorder(),
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}