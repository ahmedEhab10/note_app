import 'package:flutter/material.dart';
import 'package:note_app/const.dart';
import 'package:note_app/widgets/Cstom_TextFaild.dart';
import 'package:note_app/widgets/Custom_botton.dart';
import 'package:note_app/widgets/Notes_List_view.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'Note View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: KPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppbar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CstomTextfaild(
              hint: 'Ttle',
            ),
            SizedBox(
              height: 24,
            ),
            CstomTextfaild(
              hint: 'Contet',
              maxline: 5,
            ),
            SizedBox(
              height: 30,
            ),
            Custombotton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
