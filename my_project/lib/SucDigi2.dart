import 'package:flutter/material.dart';
import 'package:my_project/SucDigi3.dart';
import 'package:my_project/SucDigi1.dart';
void main(){
  runApp(SucApp(),);
}

class SucApp extends StatelessWidget {
  const SucApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sucdigi1(),
    );
  }
}
class SucScreen extends StatefulWidget {
  const SucScreen({super.key});

  @override
  State<SucScreen> createState() => _SucScreenState();
}

class _SucScreenState extends State<SucScreen> {
  var Time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(      
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Card(color: Colors.white,
                 shadowColor: Colors.red,
                 elevation: 12,
                  child: Text("SUCCESS DIGITAL",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurple),)),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(onPressed: ()async{
                          TimeOfDay? TimePicked = await  showTimePicker(
                          context: context,
                           initialTime: TimeOfDay.now(),
                           initialEntryMode: TimePickerEntryMode.dial,
                           );
                           if(TimePicked!=null){
                            print("TimeofDay:${TimePicked.hour}:${TimePicked.minute}:${TimePicked.period}");
                           }
                        }, child: Text('TIME!!'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
               SizedBox(height: 5,),
               Text('UNLOCKING',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
               Text('REAL ESTATE',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Text('SUCCESS..!!',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                   Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Entre Email here",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.orange,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.green,
                        ),
                      ),
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,color: Colors.orange,),),
                      prefixIcon:  IconButton(onPressed: (){}, icon: Icon(Icons.email_outlined,color: Colors.orange,),),
                    ),
                  ),
                ),
                 Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "dd/MM/YY",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.orange,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,color: Colors.orange,),),
                    prefixIcon:  IconButton(onPressed: ()async{
                      DateTime? DatePicked = await showDatePicker(
                      context: context, 
                      firstDate: DateTime(1500),
                      lastDate: DateTime(5025),
                       );
                       if(DatePicked!=null){
                        print("DateofTime:${DatePicked.day}:${DatePicked.month}:${DatePicked.year}");
                       }
                    }, icon: Icon(Icons.calendar_month_outlined,color: Colors.orange,),),
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Entre passward here",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.orange,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.green,
                        ),
                      ),
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,color: Colors.orange,),),
                      prefixIcon:  IconButton(onPressed: (){}, icon: Icon(Icons.password,color: Colors.orange,),),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){}, child: Text("ForgetPassoward!!",style: TextStyle(color: Colors.deepPurple),),),
                SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 160),
                 child: Column(
                  children: [
                  TextButton(onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return MyExperi();
                      }));
                    });
                  }, child: Text("NEXT!!",style: TextStyle(color: Colors.pinkAccent),),),
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