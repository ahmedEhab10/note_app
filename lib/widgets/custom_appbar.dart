import 'package:flutter/material.dart';
import 'package:note_app/views/Notes_view.dart';
import 'package:note_app/views/favorite_Notes.dart';
import 'package:note_app/widgets/custom_serchbutton.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar(
      {super.key, required this.title, required this.icon, this.ontap});
  final String title;
  final IconData icon;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 35),
        ),
        SizedBox(
          width: 140,
        ),
        CustomSerchbutton(
          ontap: ontap,
          icon: icon,
        ),
        SizedBox(
          width: 21,
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(16)),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, FavoriteNotes.id);
            },
            icon: Icon(
              Icons.favorite,
            ),
          ),
        )
      ],
    );
  }
}
