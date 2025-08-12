import 'package:flutter/material.dart';


void main(){
  runApp(AppUI());
}
class AppUI extends StatelessWidget {
  const AppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Color(0xFF25D366)),
      ),
      home: UIScreen(),
    );
  }
}

class UIScreen extends StatefulWidget {
  const UIScreen({super.key});

  @override
  State<UIScreen> createState() => _UIScreenState();
}

class _UIScreenState extends State<UIScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
     child:Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.teal,
        title: Text("WattsApp",style: TextStyle(fontSize: 20,color: Colors.white),),
        bottom: TabBar(
        tabs: [
          Tab(child:IconButton(onPressed: (){
           
          }, icon:  Icon(Icons.camera_alt,color: Colors.white,),),),
          Tab(child:Text("Chats"),),
          Tab(child:Text("Status"),),
          Tab(child:Text("Calls"),),
        ],
        ),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          PopupMenuButton(
            icon:Icon(Icons.more_vert_outlined,color: Colors.white,) ,
          itemBuilder: (context)=>[
       PopupMenuItem(value:1,child: Text("New Groups"),),
       PopupMenuItem(value:2 ,child: Text("New Community"),),
       PopupMenuItem(value:3,child: Text("New broadcadt"),),
       PopupMenuItem(value:4,child: Text("Linked Device"),),
       PopupMenuItem(value:5,child: Text("Starred"),),
       PopupMenuItem(value:6,child: Text("Read all"),),
       PopupMenuItem(value:7,child: Text("Setting"),),
       PopupMenuItem(value:8,child: Text("Helps"),),
          ],
          ),
        ],
      ),
      body: TabBarView(
      children:[
      Text("Camera"),
      ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg"),
            ),
            title: Text("Friends ${index+1}"),
            subtitle: Text("Hey! What's up?"),
            trailing: Text("12:30 PM"),
            onTap: () {
              
            },
          );
        },
      ),
      ListView(
       children: [
        ListTile(
          leading: Stack(
            children: [
             CircleAvatar(
              backgroundImage: NetworkImage("https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg"),
            ),
            Positioned(
            bottom: 0,
            right: 0, 
           child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 10,
            child: Icon(Icons.add,size: 16,color: Colors.white,)),
            ),
          ],
          ),
           title: Text("My Status"),
          subtitle: Text("Tap to add status update"),
        ),
        Divider(),
                Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text("Recent updates", style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg"),
          ),
          title: Text("Ahmad Khan"),
          subtitle: Text("Just now"),
        )
       ],
      ),
      ListView.builder(
        itemCount: 6,
      itemBuilder: (context,index){
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://images.pexels.com/photos/247322/pexels-photo-247322.jpeg"),
        ),
        title: Text("Friends$index"),
        subtitle: Text(index % 2 == 0? "Incoming":"outcoming"),
        trailing: Icon(index % 2 == 0? Icons.phone:Icons.video_call,color: Colors.green,),
      );
      }
      ),
      ],
      ),
           floatingActionButton: FloatingActionButton(
          onPressed: () {
            // new chat
          },
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.message),
        ),
     ),
    );
  }
}