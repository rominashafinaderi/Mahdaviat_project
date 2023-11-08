import 'package:flutter/material.dart';

class AppBarActionListWidgets extends StatelessWidget {
  final Icon icon;
  final Icon? icon2;
  final String? actionText;
  final VoidCallback onPressed;
  final VoidCallback? onPressed2;
  final double iconSize;
  final Color iconColor;

  AppBarActionListWidgets({
    required this.icon,
    this.icon2,
    this.actionText,
    required this.onPressed,
    this.onPressed2,
    this.iconSize = 28.0,
    this.iconColor =  Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      Text(actionText ?? ''),
      IconButton(
        onPressed: onPressed,
        icon: icon,
        iconSize: iconSize,
        color: iconColor,
      ),
    ];

    if (icon2 != null && onPressed2 != null) {
      widgetList.add(
        IconButton(
          onPressed: onPressed2,
          icon: icon2!,
          iconSize: iconSize,
          color: iconColor,
        ),
      );
    }
    return  Container(
        padding: const EdgeInsets.only(left: 20),
        width: 100,
        child: ListView(
          children: widgetList,
        ),
    );
  }
}
