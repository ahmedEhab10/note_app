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
            notewidget()
          ],
        ),
      ),
    );
  }
}

class notewidget extends StatelessWidget {
  const notewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 24),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 220, 135),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Text(
                'Build your career with Hobaa',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 20),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Text(
            'May 20,2024',
            style: TextStyle(color: Colors.black.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
