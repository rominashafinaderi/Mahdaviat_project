import 'package:flutter/material.dart';
class TextButtonHeader extends StatefulWidget {
  final IconData iconData;
  final double iconSize;
   final Color iconColor;
  final String text;
  final  Color? color ;
  final VoidCallback onPressed;
  final bool isSelected;


  const TextButtonHeader({
    Key? key,
    required this.iconData,
    required this.text,
    required this.onPressed,
    required this.isSelected,
    this.iconSize=17,
     this.iconColor= Colors.black54,
    this.color,
  }) : super(key: key);

  @override
  _TextButtonHeaderState createState() => _TextButtonHeaderState();
}

class _TextButtonHeaderState extends State<TextButtonHeader> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: ClipRRect(
         borderRadius : BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(10),
          color: widget.isSelected ? Colors.white : null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Icon(
                widget.iconData,
                size: widget.iconSize,
                color: widget.isSelected ? Color(0xFF0ad9b8) : Colors.grey[600]!,
              ),
              SizedBox(width:5),
              Text(
                widget.text,
                style: TextStyle(
                  color: widget.isSelected ? Colors.grey[800]!:Colors.grey[600]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
