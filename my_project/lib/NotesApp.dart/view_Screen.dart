import 'package:flutter/material.dart';
import 'package:my_project/NotesApp.dart/edit_noteScreen.dart';
import 'package:my_project/NotesApp.dart/note_Provider.dart';
import 'package:provider/provider.dart';


class ViewNoteScreen extends StatefulWidget {
  final String noteId;
  ViewNoteScreen({required this.noteId});

  @override
  State<ViewNoteScreen> createState() => _ViewNoteScreenState();
}

class _ViewNoteScreenState extends State<ViewNoteScreen> {
  @override
  Widget build(BuildContext context) {
    final note =
    Provider.of<NoteProvider>(context).getNoteById(widget.noteId);

    return Scaffold(
      appBar: AppBar(
        title: Text("View Note"),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => EditNoteScreen(noteId: widget.noteId),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              showDialog(context: context, builder:(_)=> AlertDialog(
                title:  Text("Are you sure you want to delete",style: TextStyle(fontSize: 20,color: Colors.black),),
                content:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child:Text("NO",style: TextStyle(color: Colors.white),)),
                    ElevatedButton(onPressed: (){
                     Provider.of<NoteProvider>(context,listen: false).deleteNoteProvider(widget.noteId);
                     Navigator.pop(context);
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,

                        ),
                        child:Text("YES",style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ));

              // Provider.of<NoteProvider>(context, listen: false)
              //     .deleteNoteProvider(widget.noteId);
              // Navigator.pop(context);
            },

          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                note.content,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}