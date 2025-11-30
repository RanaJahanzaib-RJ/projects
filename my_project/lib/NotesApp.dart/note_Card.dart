import 'package:flutter/material.dart';
import 'package:my_project/NotesApp.dart/note_model.dart';


class NoteCard extends StatelessWidget {
  final NoteModel note;

  NoteCard({required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade50,
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 6),
            Text(
              note.content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}