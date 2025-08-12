import 'package:flutter/material.dart';

void main(){
  runApp(partApp());
}
class partApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PartScreen(),
    );
  } 
}
class PartScreen extends StatefulWidget {
  const PartScreen({super.key});

  @override
  State<PartScreen> createState() => _PartScreenState();
}

class _PartScreenState extends State<PartScreen> {
      var no1Controller = TextEditingController();
      var no2Controller = TextEditingController();
  
     var  Result = "";

     var Time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text('CountApp'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
     body: Container(
      color: Colors.blue.shade100,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
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
                  suffixIcon: IconButton(onPressed: () async {
                   TimeOfDay? DayPicked =await showTimePicker(
                    context: context, 
                    initialTime:TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dial,
                     );
                     if(DayPicked!=null){
                      print("Selected Date:${DayPicked.minute}:${DayPicked.hour}:${DayPicked.period}");
                     }
                  }, icon:Icon(Icons.punch_clock_outlined,color: Colors.orange,),),
                  prefixIcon:  IconButton(onPressed: ()async{
                    DateTime? DatePicked=await showDatePicker(
                      context: context,
                     firstDate: DateTime(1800), 
                     lastDate: DateTime(5025),
                     );
                     if(DatePicked!=null){
                     print('DateOfTime:${DatePicked.day}:${DatePicked.month}:${DatePicked.year}');
                     }
                  }, icon:Icon(Icons.calendar_month_outlined,color: Colors.orange,),),
                ),
              ),
            ),
            // SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Text("Hellow ",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     Text("WORLD! ",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                        Text("First Calculator App ",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: no1Controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                     keyboardType: TextInputType.phone,
                     controller: no2Controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var Sum = no1 + no2;
                        Result = "The Sum Of $no1 And $no2 is $Sum";
                        setState(() {
                        });
                      }, child: Text("Add"),),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var Diff = no1 - no2;
                        Result = "The Diff Of $no1 And $no2 is $Diff";
                        setState(() {
                        });
                      }, child: Text("Sub"),), 
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var MuL = no1 * no2;
                        Result = "The MuL Of $no1 And $no2 is $MuL";
                        setState(() {
                        });
                      }, child: Text("MuL"),),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var Divide = no1 / no2;
                        Result = "The Division Of $no1 And $no2 is ${Divide.toStringAsFixed(2)}";
                        setState(() {
                        });
                      }, child: Text("Divide"),),  
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(21.0),),
                Text(Result,style:TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
              ],
            ),
          ],
        ),
      ),
     ),
    );
  }
}