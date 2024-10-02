import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/Add_Note_Cubit/add_note_cubit_cubit.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/Edit_Note_View.dart';
import 'package:note_app/views/Notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(kNoteBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        routes: {
          NotesView.id: (context) => NotesView(),
        },
        initialRoute: NotesView.id,
      ),
    );
  }
}
