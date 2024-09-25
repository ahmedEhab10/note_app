import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_serchbutton.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 35),
        ),
        CustomSerchbutton()
      ],
    );
  }
}
