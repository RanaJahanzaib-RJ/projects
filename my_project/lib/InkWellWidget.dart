import 'package:flutter/material.dart';

void main(){
  runApp(InwellApp());
}

class InwellApp extends StatefulWidget {
  const InwellApp({super.key});

  @override
  State<InwellApp> createState() => _InwellAppState();
}

class _InwellAppState extends State<InwellApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyInkwell(),
    );
  }
}

class MyInkwell extends StatelessWidget {
  const MyInkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('InkWell Widget',style: TextStyle(color: Colors.white,fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print('On Tapp Here');
          },
          onDoubleTap: () {
              print('double Tapp Here');
          },
          onLongPress: () {
              print('Large Tapp Here');
          },
          child: Container(
            height: 200,
            width: 200,
            color:  Colors.yellow,
            child: Center(child: InkWell(
              onTap: () {
                  print('On Tapp Here');
              },
              onDoubleTap: () {
                  print('double Tapp Here');
              },
              onLongPress: () {
                  print('Large Tapp Here');
              },
              child: Text("Click Me",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            ),
            ),
          ),
        ),
      ),
    );
  }
}