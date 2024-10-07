import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/views/Edit_Note_View.dart';

class notewidget extends StatefulWidget {
  notewidget({super.key, required this.color1, required this.note});
  Color color1;
  Notemodel note;

  @override
  State<notewidget> createState() => _notewidgetState();
}

class _notewidgetState extends State<notewidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(
            note: widget.note,
          );
        }));
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 24),
        decoration: BoxDecoration(
            color: widget.color1, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                widget.note.title,
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                child: Text(
                  widget.note.suptitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  widget.note.delete();
                  BlocProvider.of<NotesCubit>(context).GetAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(24)),
                  height: 40,
                  width: 40,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          widget.note.isfavorite = !widget.note.isfavorite;
                          widget.note.save();
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color:
                            widget.note.isfavorite ? Colors.red : Colors.grey,
                      )),
                ),
                Text(
                  widget.note.date,
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
