import 'package:flutter/material.dart';
class TextButtonHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextButtonHeader();

  final double iconSize;
  final Color iconColor;
  IconData iconData;
  String? text;
  Color? color ;
  TextDirection? textDirection;
  void Function()? onPressed;

  TextButtonHeader({
    this.iconSize = 17,
    this.iconColor = Colors.black54,
    required this.iconData,
    this.text,
    this.color,
    this.onPressed,
  });
}

class _TextButtonHeader extends State<TextButtonHeader> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith((states) => Colors.white),

      ),
      onPressed: widget.onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Icon(
              widget.iconData,
              size: widget.iconSize,
              color: widget.iconColor,
            ),
          SizedBox(width:6),
              Text(
                widget.text!,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
        ],
      ),
    );
  }
}

