import 'package:flutter/material.dart';
void main(){
  runApp(CountApp());
}

class CountApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CountScreen(),
   );
  }
}

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  var Count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CountApp'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count:_$Count",style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
            setState(() {
              Count ++; 
              print("_$Count");
            });
            }, child: Text('Counted'),),
          ],
        ),
      ),
    );
  }
}


