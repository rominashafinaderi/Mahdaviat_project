import 'package:flutter/material.dart';
class ButtonTabBar extends StatefulWidget {

  final String text;
  final  Color? color ;
  final VoidCallback onPressed;
  final bool isSelected;

  const ButtonTabBar({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.isSelected,

    this.color,
  }) : super(key: key);

  @override
  State<ButtonTabBar> createState() => _ButtonTabBarState();
}

class _ButtonTabBarState extends State<ButtonTabBar> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onPressed,
      child: ClipRRect(
        borderRadius : BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(10),
          color: widget.isSelected ? Colors.grey[400] : null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [

              Text(
                widget.text,
                style: TextStyle(
                  color: widget.isSelected ? Colors.grey[800]!: Color(0xFF0ad9b8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
