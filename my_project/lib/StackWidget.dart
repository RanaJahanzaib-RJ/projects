import 'package:flutter/material.dart';

void main(){
  runApp(StackApp(),);
}
class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackScreen(),
    );
  }
}
class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack&Rich'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blueGrey,
                  ),
                    Positioned(
                      top: 21,
                      left: 21,
                      // bottom: 21,
                      // right: 21,
                      child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.deepPurple,
                     ),
                    ),
                  Positioned(
                    left: 42,
                    top:  42,
                    child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                     ),
                  ),
                      Positioned(
                    left: 62,
                    top:  62,
                    child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.redAccent,
                     ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            RichText(
            text: TextSpan(text: 'Hello',style: TextStyle(color: Colors.grey,fontSize: 17,), 
            ),
            ),
            Text.rich(TextSpan(text: 'Wolrd!!',style: TextStyle(fontSize: 23,color: Colors.amber)))
          ],
        ),
      ),
    );
  }
}