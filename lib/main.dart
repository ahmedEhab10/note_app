import 'package:flutter/material.dart';
import 'package:note_app/views/Edit_Note_View.dart';
import 'package:note_app/views/Notes_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      routes: {
        NotesView.id: (context) => NotesView(),
        EditNoteView.id: (context) => EditNoteView()
      },
      initialRoute: NotesView.id,
    );
  }
}
