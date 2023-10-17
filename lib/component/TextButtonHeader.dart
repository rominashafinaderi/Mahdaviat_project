import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HeaderButton extends StatefulWidget {
  const HeaderButton({super.key,});
  @override
  State<HeaderButton> createState() => _HeaderButtonState();


}

class _HeaderButtonState extends State<HeaderButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:(){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
              FontAwesomeIcons.folderMinus,
              size: 17,
              color: Colors.black.withOpacity(0.7)),
          SizedBox(width:4,),
          Text("برگزیده",
            style: TextStyle(color: Colors.black.withOpacity(0.7)
            ),)
          , // tex
        ],
      ),
    );
  }
}
