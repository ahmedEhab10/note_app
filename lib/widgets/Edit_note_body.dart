import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/widgets/Cstom_TextFaild.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class EditNoteBody extends StatefulWidget {
  EditNoteBody({super.key, required this.note});
  Notemodel? note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? Title, Content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppbar(
            ontap: () {
              widget.note!.title = Title ?? widget.note!.title;
              widget.note!.suptitle = Content ?? widget.note!.suptitle;
              widget.note!.save();
              BlocProvider.of<NotesCubit>(context).GetAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CstomTextfaild(
            onchange: (value) {
              Title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 30,
          ),
          CstomTextfaild(
            onchange: (value) {
              Content = value;
            },
            hint: 'Content',
            maxline: 5,
          )
        ],
      ),
    );
  }
}
