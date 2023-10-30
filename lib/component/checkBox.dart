import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({Key? key}) : super(key: key);

  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
        isChecked ? 'فعال است' : 'غیر فعال',
        style: TextStyle(
          color:Colors.grey[400],
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          fillColor: MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Color(0xFF0ad9b8);
              }
              return Color(0xFFeef0fc);
            },
          ),
          checkColor: Colors.white,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),

      ],
    );
  }
}