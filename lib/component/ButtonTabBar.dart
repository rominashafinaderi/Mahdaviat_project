import 'package:flutter/material.dart';
class ButtonTabBar extends StatefulWidget {
  final bool isSelected;
  final String text;

  const ButtonTabBar({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<ButtonTabBar> createState() => _ButtonTabBarState();
}

class _ButtonTabBarState extends State<ButtonTabBar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.all(17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Text(
                        widget.text,
                        style: TextStyle(
                          fontSize:13,
                          color: widget.isSelected ? Color(0xFF58d3bd):Colors.grey[600]!,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                ],
              ),
            ],
          ),
    );
  }
}
