import 'package:flutter/material.dart';
class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 25),
      child: Container(
        margin: const EdgeInsets.all(0),
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
            color: Colors.grey,
            size: 20,
          ),
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
        ),
      ),
    );
  }
}

