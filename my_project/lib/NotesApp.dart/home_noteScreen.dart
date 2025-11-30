import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_project/NotesApp.dart/add_noteScreen.dart';
import 'package:my_project/NotesApp.dart/note_Provider.dart';
import 'package:my_project/NotesApp.dart/view_Screen.dart';
import 'package:my_project/main.dart';
import 'package:provider/provider.dart';
import 'note_card.dart';

class HomeScreenPart2 extends StatefulWidget {
  @override
  State<HomeScreenPart2> createState() => _HomeScreenPart2State();
}

class _HomeScreenPart2State extends State<HomeScreenPart2> {

  getRandomColor(){
    Random random =Random();
    return backgroundColors[random.nextInt(backgroundColors.length)];
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NoteProvider>(context);
    final notes = provider.notes;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110), // AppBar + TextField height
        child: AppBar(
          title: Text(
            ' Notes',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          actions: [
            Container(
                padding: EdgeInsets.all(0),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(
                  Icons.sort,
                  color: Colors.white,
                )),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xffF3F1F1),
                  filled: true,
                  hintText: "Search Notes",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                  hintStyle: TextStyle(
                      color: Color(0xff86869E), fontFamily: "StoryScript"),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20.0,
                    color: Color(0xff86869E),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xffF3F1F1),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xffF3F1F1),
                    ),
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add,color: Colors.white,size: 30,),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AddNoteScreen()),
          );
        },
      ),
      body: notes.isEmpty
          ? Center(
        child: Text(
          "No notes yet. Tap + to add one!",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      )
          : ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: notes.length,
         itemBuilder: (context ,index){
           return GestureDetector(
             onTap: (){
               Navigator.push(context,MaterialPageRoute(builder: (context){
                 return ViewNoteScreen(noteId: notes[index].id);
               }));
             },
               child: NoteCard(note: notes[index]));
         }
      ),
    );
  }
}



