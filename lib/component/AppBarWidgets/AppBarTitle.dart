import 'package:flutter/material.dart';
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key, required this.text, required this.textSize});
  final String text;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child:
      Text(text,
        style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold
        ),),
    );
  }
}
