import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(ShredAPP());
}
class ShredAPP extends StatelessWidget {
  const ShredAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalApp(),
    );
  }
}
class LocalApp extends StatefulWidget {
  const LocalApp({super.key});

  @override
  State<LocalApp> createState() => _LocalAppState();
}

class _LocalAppState extends State<LocalApp> {
  var nameController = TextEditingController();
  static const String KEYNAME = "name";
  @override
  void initState() {
    super.initState();
    getValue();
  }

  var Result = "No Value Saved";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Prafrence",style: TextStyle(fontSize: 35,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            children: [
              SizedBox(height: 75,),
              TextField(
                keyboardType: TextInputType.number,
                controller: nameController,
                decoration: InputDecoration(
                  label: Text("NAME"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              FloatingActionButton(onPressed: ()async{
             var name = nameController.text.toString();
             var prefs =await SharedPreferences.getInstance();
             prefs.setString(KEYNAME, nameController.text.toString());    

              },
              backgroundColor: Colors.green,
              child: Text("SAVE",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 25,),
              Text(Result,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.redAccent),),
            ],
          ),
        ),
      ),
    );
  }
 void getValue()async{
  var prefs =await SharedPreferences.getInstance();
  var getname = prefs.getString(KEYNAME);
  Result =(getname ?? "No Value Saved");
  setState(() {
  });
 } 
}