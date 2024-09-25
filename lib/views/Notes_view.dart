import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'Note View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppbar(),
          ],
        ),
      ),
    );
  }
}
