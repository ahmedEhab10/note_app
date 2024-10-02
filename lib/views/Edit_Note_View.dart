import 'package:flutter/material.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/widgets/Edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({super.key, required this.note});
  static String id = 'Edit View';
  Notemodel? note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EditNoteBody(
      note: note,
    ));
  }
}
