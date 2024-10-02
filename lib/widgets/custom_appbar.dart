import 'package:flutter/material.dart';
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 35),
        ),
        CustomSerchbutton(
          ontap: ontap,
          icon: icon,
        )
      ],
    );
  }
}
