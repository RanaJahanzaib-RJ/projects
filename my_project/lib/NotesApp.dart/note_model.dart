class NoteModel {
  String id;
  String title;
  String content;
  DateTime createdAt;

  NoteModel({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
  });
}