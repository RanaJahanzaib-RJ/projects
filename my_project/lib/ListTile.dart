import 'package:flutter/material.dart';
void main(){
  runApp(ListviewApp());
}
class ListviewApp extends StatefulWidget {
  const ListviewApp({super.key});

  @override
  State<ListviewApp> createState() => _ListviewAppState();
}

class _ListviewAppState extends State<ListviewApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: MyListTile(),
    );
  }
}

class MyListTile extends StatefulWidget {
  const MyListTile({super.key});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
var  arrName = ["M.JAHANZAIB", "M.AHMAD", "M.SALAH", "M.ISMAIL", "M.MUZAMIL", "M.EESA", "M.MUSA", "M.ADAM", "M.AOUN", "M.FAHAD", "M.DANIAL" ];
var arrsubName = ["(App Developer)", "(App Developer)", "(Expert ML)", "(Web Desigener)", "(UI/UX Desigener)", "(Cloud Computer)", "(Expert AI)", "(Web Desigener)", "(Web Developer)", "(Expert FB Ads)","(Web Developer)"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text('CONTECT LIST',style: TextStyle(color: Colors.white,fontSize: 20),
        ),
             actions: [
          CircleAvatar(
            radius: 12,
            child: Icon(Icons.search,color: Color(0xffd4d181),
            ),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 5),
             child: CircleAvatar(
              radius: 12,
              child: Icon(Icons.notifications,color: Color(0xffd4d181),
              ),
             ),
           ),
        ],
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
         return Column(
          children: [
         ListTile(
             leading:
           CircleAvatar(radius: 30,
           backgroundColor: Colors.lightGreen,
          //  child: Icon(Icons.person),
          child: Image.network('https://cdn-icons-png.flaticon.com/512/146/146029.png'),
          
           ),
           
          title: Text(arrName[index]),
          subtitle: Text(arrsubName[index]),
          // tileColor: Colors.blue,
          // textColor: Colors.blue,
          trailing: ElevatedButton(onPressed: (){}, child: Text("Order Now")),
         ),
          ],
         );
        },
        itemCount: arrName.length,
        separatorBuilder: (context, index) {
          return Divider(height: 50,thickness: 1,);
        },
      ),
    );
  }
}
