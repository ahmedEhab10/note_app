import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_serchbutton.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 35),
        ),
        CustomSerchbutton(
          icon: icon,
        )
      ],
    );
  }
}
