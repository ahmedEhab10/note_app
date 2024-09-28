import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CstomTextfaild extends StatelessWidget {
  const CstomTextfaild({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
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
