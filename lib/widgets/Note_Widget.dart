import 'package:flutter/material.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/views/Edit_Note_View.dart';

class notewidget extends StatelessWidget {
  notewidget({super.key, required this.color1, required this.note});
  Color color1;
  Notemodel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 24),
        decoration: BoxDecoration(
            color: color1, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                child: Text(
                  note.suptitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Text(
              note.date,
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
