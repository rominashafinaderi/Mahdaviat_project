import 'package:flutter/material.dart';
class HeaderButton extends StatelessWidget {
  const HeaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.call), // icon
          Text("Call"), // text
        ],
      ),
    );
  }
}
