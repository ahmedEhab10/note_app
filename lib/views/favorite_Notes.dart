import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/widgets/Note_Widget.dart';

class FavoriteNotes extends StatefulWidget {
  const FavoriteNotes({super.key});
  static String id = 'FavoriteNotes id';

  @override
  State<FavoriteNotes> createState() => _FavoriteNotesState();
}

class _FavoriteNotesState extends State<FavoriteNotes> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).GetAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FavNotesListView(),
    );
  }
}

class FavNotesListView extends StatelessWidget {
  const FavNotesListView({super.key});

  final data = const [
    Colors.yellow,
    Colors.cyan,
    Colors.amber,
    Colors.blueAccent,
    Colors.grey,
    Colors.cyanAccent,
    Colors.lime,
    Colors.teal,
    Colors.blueGrey,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<Notemodel> FavNotes = BlocProvider.of<NotesCubit>(context)
                .Notes!
                .where((note) => note.isfavorite)
                .toList() ??
            [];
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
              itemCount: FavNotes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: notewidget(
                    color1: data[Random().nextInt(10)],
                    note: FavNotes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
