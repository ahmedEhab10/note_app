import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CstomTextfaild extends StatelessWidget {
  const CstomTextfaild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: const TextStyle(color: KPrimaryColor),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(KPrimaryColor)),
    );
  }

  OutlineInputBorder buildborder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
