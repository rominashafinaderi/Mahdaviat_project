import 'package:flutter/material.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({super.key, this.onPressed, required this.iconColor});

  final void Function()? onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-10,10),
      child: Container(
          margin: const EdgeInsets.all(12),
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2.0,
              color: Colors.grey[400]!,
            ),
          ),
          child: IconButton(
            onPressed:onPressed,
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: iconColor,
              size: 19,
            ),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
        ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key, this.onPressed, required this.iconColor});
  final void Function()? onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return  Transform.translate(
      offset: Offset(-20,5),
      child:
      Container(
        margin: const EdgeInsets.all(5),
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(

        ),
        child: IconButton(
          onPressed:onPressed,
          icon: Icon(
            Icons.list_rounded,
            color: iconColor,
            size:40,
          ),
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
        ),
      ),
    );
  }
}

