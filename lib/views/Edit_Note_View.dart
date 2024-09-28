import 'package:flutter/material.dart';
import 'package:note_app/widgets/Edit_note_body.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'Edit View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteBody());
  }
}
