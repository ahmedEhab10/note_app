import 'package:flutter/material.dart';

class CustomSerchbutton extends StatelessWidget {
  CustomSerchbutton({super.key, required this.icon});
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Icon(icon),
      ),
    );
  }
}
