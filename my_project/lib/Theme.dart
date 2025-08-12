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
      textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
      headlineMedium: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
      headlineSmall: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
      ),
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
  var arrColors = [
  Colors.black,
   Colors.blue,
    Colors.green,
     Colors.deepPurple,
      Colors.red,
       Colors.yellow,
       Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('CONTECT LIST',style: TextStyle(color: Colors.white,fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:100,crossAxisSpacing: 11,mainAxisSpacing: 11),
        itemBuilder: (context,index){
       return Container(color: arrColors[index],);
       },itemCount: arrColors.length,
        
       ),
     ),
      
  
    
  
    );
  }
}


















// CONCEPT OF THEME AND ITS USED??

//   textTheme: TextTheme(
      // headlineLarge: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
      // headlineMedium: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
      // headlineSmall: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
      // ),

  //  body: Center(
  //       child: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Column(
  //           children: [
  //                 Text('Text1',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.amber),),
  //                 Text('Text2',style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.lightBlue),),
  //                 Text('Text3',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.lime),),
               
  //           ],
  //         ),
  //       ),
  //     ),

// CONCEPT OF CIRCLEAVATAR??

//  body: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Column(
//       children: [
//         CircleAvatar(
//             child: Container(
//             height: 90,
//             width: 90,
//             child: Column(
//               children: [
//                 Container(
//                   height: 60,
//                   width: 60,
//                   child: Image.network('https://cdn-icons-png.flaticon.com/512/146/146029.png'),
//                 ),
//                 Text('M.jahanzaib'),
             
//               ],
//             ),
//             ),
//             maxRadius: 60,  
//             backgroundColor: Colors.lightGreen,
//           ),
//           SizedBox(height: 10,),
     
//       ],
//     ),   
//   ),