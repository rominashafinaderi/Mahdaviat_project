import 'package:flutter/material.dart';
class ButtonHeader extends StatefulWidget {
  final IconData iconData;
  final double iconSize;
   final Color iconColor;
  final String text;
  final  Color? color ;
  final VoidCallback onPressed;
  final bool isSelected;


  const ButtonHeader({
    Key? key,
    required this.iconData,
    required this.text,
    required this.onPressed,
    required this.isSelected,
    this.iconSize=15,
     this.iconColor= Colors.black54,
    this.color,
  }) : super(key: key);

  @override
  _ButtonHeaderState createState() => _ButtonHeaderState();
}

class _ButtonHeaderState extends State<ButtonHeader> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: ClipRRect(
         borderRadius : BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(9),
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
              SizedBox(width:4),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 14,
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
