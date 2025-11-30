import 'package:flutter/material.dart';


   void main(){
    runApp(GetXUi());
   }
class GetXUi extends StatelessWidget {
  const GetXUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetXHome(),
    );
  }
}
class GetXHome extends StatefulWidget {
  const GetXHome({super.key});

  @override
  State<GetXHome> createState() => _GetXHomeState();
}

class _GetXHomeState extends State<GetXHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("LEARNING GETX"),
      ),
    );
  }
}