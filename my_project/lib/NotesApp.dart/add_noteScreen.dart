import 'package:flutter/material.dart';
import 'package:my_project/NotesApp.dart/note_Provider.dart';
import 'package:provider/provider.dart';


class AddNoteScreen extends StatefulWidget {
  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Title"),
            ),
            SizedBox(height: 12),
            TextField(
              controller: contentController,
              maxLines: 6,
              decoration: InputDecoration(labelText: "Content"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: Text("Save",style: TextStyle(fontSize: 17,color: Colors.white),),
              onPressed: () {
                Provider.of<NoteProvider>(context, listen: false)
                    .addNoteProvider(titleController.text, contentController.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}