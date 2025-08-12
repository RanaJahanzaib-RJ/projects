import 'package:flutter/material.dart';

void main(){
  runApp(ChangeApp());
}
class ChangeApp extends StatelessWidget {
  const ChangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.lightGreen,
    ),
        home: Changescreen(),
    );
  }
}

class Changescreen extends StatefulWidget {
  const Changescreen({super.key});

  @override
  State<Changescreen> createState() => _ChangescreenState();
}

class _ChangescreenState extends State<Changescreen> {
  // var EmailText = TextEditingController();
  //  var PhoneText = TextEditingController();
  //   var PassText = TextEditingController();
  var Time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text('EEZOO',style: TextStyle(color: Colors.white,fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
   body: Container(
    height: 700,
    width: 500,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
      image: NetworkImage('https://miro.medium.com/v2/resize:fit:1400/1*8sh-jttJb9Aj1bDWTa1n9w.png'),
      ),
    ),
  child: Center(
    child: Container(
    width: 250, 
   
    child:
       Column(
        children: [
          SizedBox(height: 28,),
           Text('WELCOME',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink,
            shadows: [
              BoxShadow(
                color: Colors.yellow,
                blurRadius: 3,
                offset: Offset(3, 3),
              ),
            ],
            ),
            ),
           SizedBox(height: 3,),
          Text('TO EEZOO',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink,),),
            SizedBox(height: 3,),
          Text('("Dreams Comes To True")',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.pink,),),
          SizedBox(height: 7,),
          TextField(
            // controller: EmailText,
            decoration: InputDecoration(
              hintText: 'Enter email here',
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
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_sharp,color: Colors.orange,),
              ),
              prefixIcon: Icon(Icons.email_outlined,color: Colors.orange,),
            ), 
          ),
          SizedBox(height: 7,),
          TextField(
            // controller: PhoneText,
            keyboardType: TextInputType.phone,
            obscureText: true,
            obscuringCharacter: '*',
               decoration: InputDecoration(
              hintText: 'Enter Phone Number',
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
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_sharp,color: Colors.orange,),
              ),
              prefixIcon: Icon(Icons.phone_android_outlined,color: Colors.orange,),
            ),  
          ),
           SizedBox(height: 7,),
          TextField(
            // controller: PassText,
               keyboardType: TextInputType.phone,
            obscureText: true,
            obscuringCharacter: '*',
                decoration: InputDecoration(
              hintText: 'Enter Passward here',
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
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_sharp,color: Colors.orange,),
              ),
              prefixIcon: Icon(Icons.lock_clock_outlined,color: Colors.orange,),
            ), 
          ),
          SizedBox(height: 7,),
          TextField(
              decoration: InputDecoration(
              hintText: 'dd/MM/YYYY',
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
              suffixIcon: IconButton(onPressed: ()async{
               TimeOfDay? PickedTime = await showTimePicker(context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial,
                );   
                if(PickedTime!=null){
                  print('Selected Time:${PickedTime.hour}:${PickedTime.minute}:${PickedTime.period}');
                } 
              },
               icon: Icon(Icons.remove_red_eye_sharp,color: Colors.orange,),
              ),
              prefixIcon:  IconButton(onPressed: ()async{
                DateTime? DatePicked = await showDatePicker(
                  context: context,
                   firstDate: DateTime(1960),
                    lastDate: DateTime(5095),
                    );
                    if(DatePicked!=null){
                      print('Selecked Date:${DatePicked.day}:${DatePicked.month}:${DatePicked.year}');
                    }
              }, icon: Icon(Icons.calendar_month_outlined,color: Colors.orange,),
              ),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            // String uEmail = EmailText.text.toString();
            // String uPhone = PhoneText.text.toString();
            // String uPass = PassText.text.toString();
          }, child: Text('LogIn',style: TextStyle(color: Colors.black,fontSize: 15),),),
            SizedBox(height: 10,),
          InkWell(
            onDoubleTap: () {
              print('Print double Text');
            },
            child: Text(
              'Forget Password|Logout??',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),
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