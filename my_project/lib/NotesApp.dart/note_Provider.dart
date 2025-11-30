import 'package:flutter/material.dart';
import 'package:my_project/NotesApp.dart/note_model.dart';


class NoteProvider with ChangeNotifier {
  final List<NoteModel> _notes = [];

  List<NoteModel> get notes => _notes;

  // CREATE
  void addNoteProvider(String title, String content) {
    _notes.add(
      NoteModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title,
        content: content,
        createdAt: DateTime.now(),
      ),
    );
    notifyListeners();
  }

  // READ - Get by ID
  NoteModel getNoteById(String id) {
    return _notes.firstWhere((note) => note.id == id);
  }

  // UPDATE
  void updateNoteProvider(String id, String title, String content) {
    final index = _notes.indexWhere((note) => note.id == id);
    _notes[index].title = title;
    _notes[index].content = content;
    notifyListeners();
  }

  // DELETE
  void deleteNoteProvider(String id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }
}