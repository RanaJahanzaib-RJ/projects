import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(SPAPP());
}

class SPAPP extends StatelessWidget {
  const SPAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SPScreen(),
    );
  }
}

class SPScreen extends StatefulWidget {
  const SPScreen({super.key});

  @override
  State<SPScreen> createState() => _SPScreenState();
}

class _SPScreenState extends State<SPScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SP Quiz"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences sp = await SharedPreferences.getInstance();
          sp.setString("Name", "Jahanzaib");
          sp.setInt("age", 21);
          sp.setDouble("Grade", 83.05);
          sp.setBool("Status", true);
          sp.setStringList("List", <String>[
            "Name",
            "Age",
            "Grade",
            "Status",
            "You are aligible for this process"
          ]);
          print(sp.getString("Name"));
          setState(() {
            
          });
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: SharedPreferences.getInstance(), builder:(context, AsyncSnapshot<SharedPreferences> snapshot){
               if(snapshot.hasData){
                return Card(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text(snapshot.data!.getString("Name").toString()),
                      ],
                    ),
                  ),
                );
               }else{
               return Text("Loading");
               }
              }
              ),
        ],
      ),
    );
  }
}
