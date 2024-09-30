import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/Add_Note_Cubit/add_note_cubit_cubit.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/views/Edit_Note_View.dart';
import 'package:note_app/views/Notes_view.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NotemodelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubitCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        routes: {
          NotesView.id: (context) => NotesView(),
          EditNoteView.id: (context) => EditNoteView()
        },
        initialRoute: NotesView.id,
      ),
    );
  }
}
