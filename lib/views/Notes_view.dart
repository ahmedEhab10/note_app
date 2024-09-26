import 'package:flutter/material.dart';
import 'package:note_app/widgets/Note_Widget.dart';
import 'package:note_app/widgets/Notes_List_view.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'Note View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppbar(),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
