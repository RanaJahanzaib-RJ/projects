import 'package:flutter/material.dart';
import 'package:my_project/NotesApp.dart/note_Provider.dart';
import 'package:provider/provider.dart';


class EditNoteScreen extends StatefulWidget {
  final String noteId;
  EditNoteScreen({required this.noteId});

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  late TextEditingController titleC;
  late TextEditingController contentC;

  @override
  void initState() {
    final note = Provider.of<NoteProvider>(context, listen: false)
        .getNoteById(widget.noteId);

    titleC = TextEditingController(text: note.title);
    contentC = TextEditingController(text: note.content);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Note"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: titleC),
            SizedBox(height: 12),
            TextField(controller: contentC, maxLines: 6),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: Text("Update",style: TextStyle(fontSize: 17,color: Colors.white),),
              onPressed: () {
                Provider.of<NoteProvider>(context, listen: false)
                    .updateNoteProvider(widget.noteId, titleC.text, contentC.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}