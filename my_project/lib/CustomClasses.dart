import 'package:flutter/material.dart';

class CatItem extends StatefulWidget {
  const CatItem({super.key});

  @override
  State<CatItem> createState() => _CatItemState();
}

class _CatItemState extends State<CatItem> {
  @override
  Widget build(BuildContext context) {
    return     Expanded(
            flex: 2,
            child: Container(
              color:Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(padding: EdgeInsets.all(8.0),
                child: SizedBox(width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/146/146029.png'),
                ),
                ),
                ),
                
              ),
            ),
          );
  }
}

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 4,
             child: Container(
              color:Colors.deepOrange,
              child: ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/146/146029.png'),
                  ),
                  title: Text("Name"),
                 subtitle: Text("Mob No"),
                  textColor: Colors.amber,
                  trailing:TextButton(onPressed: (){}, child: Text("OrderNow",style: TextStyle(color: Colors.amber,),),),
                 
                ),
              ),
             ),
           );
  }
}

class SubContact extends StatelessWidget {
  const SubContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 1,
             child: Container(
              color:Colors.blueGrey,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue,
                  ),
                ),
                ) ,
              ),
             ),
           );
  }
}
class SubMenue extends StatelessWidget {
  const SubMenue({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
              flex: 2,
               child: Container(
               color:Colors.lightGreen,
               child: GridView.count(crossAxisCount: 4,
               children: [
                Padding(padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue,
                  ),
                ),
                ),
                    Padding(padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue,
                  ),
                ),
                ),
                    Padding(padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue,
                  ),
                ),
                ),
                    Padding(padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue,
                  ),
                ),
                ),
             
               ],
               ),
               ),
             );
  }
}