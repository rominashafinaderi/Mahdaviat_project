import 'package:flutter/material.dart';
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key, required this.text, required this.textSize, this.centered = true})
      : super(key: key);

  final String text;
  final double textSize;
  final bool centered;

  @override
  Widget build(BuildContext context) {
    Widget titleWidget = Transform.translate(
      offset: Offset(10,10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: textSize,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );

    if (centered) {
      return Row(
        children: [
          SizedBox(width:MediaQuery.of(context).size.width/6),
          titleWidget,
        ],
      );
    } else {
      return Row(
        children: [
          titleWidget,
        ],
      );
    }
  }
}