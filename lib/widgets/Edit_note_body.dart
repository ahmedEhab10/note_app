import 'package:flutter/material.dart';
import 'package:note_app/widgets/Cstom_TextFaild.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppbar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CstomTextfaild(
            hint: 'Title',
          ),
          SizedBox(
            height: 30,
          ),
          CstomTextfaild(
            hint: 'Content',
            maxline: 5,
          )
        ],
      ),
    );
  }
}
