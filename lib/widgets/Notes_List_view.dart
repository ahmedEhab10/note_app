import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/widgets/Note_Widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

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
        List<Notemodel> Notes =
            BlocProvider.of<NotesCubit>(context).Notes ?? [];
        return ListView.builder(
            itemCount: Notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: notewidget(
                  color1: data[Random().nextInt(10)],
                  note: Notes[index],
                ),
              );
            });
      },
    );
  }
}
