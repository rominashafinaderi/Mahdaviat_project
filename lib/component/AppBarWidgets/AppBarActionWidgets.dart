import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class AppBarActionListWidgets extends StatelessWidget {
  final List<Widget> customWidgets;
  final double iconSize;
  final Color iconColor;

  AppBarActionListWidgets({
    required this.customWidgets,
    this.iconSize = 28.0,
    this.iconColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:40),
      child: Row(
          children: customWidgets,

      ),
    );
  }
}
class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, this.onPressed, required this.iconColor});
  final void Function()? onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return  Transform.translate(
      offset: Offset(-20, 8),
      child: Container(
        
        child: IconButton(
          onPressed:onPressed,
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: iconColor,
            size:30,
          ),
          padding: EdgeInsets.all(5),
          constraints: BoxConstraints(),
        ),
      ),
    );
  }
}

class EllipsisWidget extends StatelessWidget {
  const EllipsisWidget({super.key, this.onPressed, required this.iconColor});
  final void Function()? onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return  Transform.translate(
      offset: Offset(-20, 10),
      child: IconButton(
        onPressed:onPressed,
        icon: Icon(
          FontAwesomeIcons.ellipsisVertical,
          color: iconColor,
          size:26,
        ),
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints(),
      ),
    );
  }
}
class TeashWidget extends StatelessWidget {
  const TeashWidget({super.key, this.onPressed, required this.iconColor});
  final void Function()? onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return  Transform.translate(
      offset: Offset(-20, 10),
      child: IconButton(
        onPressed:onPressed,
        icon: Icon(
          FontAwesomeIcons.trash,
          color: iconColor,
          size:25,
        ),
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints(),
      ),
    );
  }
}
class PencilWidget extends StatelessWidget {
  const PencilWidget({super.key, this.onPressed, required this.iconColor});
  final void Function()? onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return  Transform.translate(
      offset: Offset(-20, 10),
      child: IconButton(
        onPressed:onPressed,
        icon: Icon(
          FontAwesomeIcons.pencil,
          color: iconColor,
          size:23,
        ),
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints(),
      ),
    );
  }
}
class GearWidget extends StatelessWidget {
  const GearWidget({super.key, this.onPressed, required this.iconColor});
  final void Function()? onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return  Transform.translate(
      offset: Offset(-20, 11),
      child: IconButton(
        onPressed:onPressed,
        icon: Icon(
          FontAwesomeIcons.gear,
          color: iconColor,
          size:28,
        ),
        padding: EdgeInsets.all(3),
        constraints: BoxConstraints(),
      ),
    );
  }
}
class Trash_TextWidget extends StatelessWidget {
  const Trash_TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Transform.translate(
         offset: Offset(-20, 10),
         child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          highlightColor:Color(0xFFeef0fc),
          splashColor:Color(0xFFeef0fc),
          onTap: (){},
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.all(8),
              child: Row(
                children: [
                     Text('پاک کردن همه',
                      style: TextStyle(
                          color:  Colors.grey[400]!,
                          fontWeight: FontWeight.bold
                      ),),
                  SizedBox(width:10),
                  Icon(
                        FontAwesomeIcons.trash,
                        color: Colors.grey[400]!,
                        size:20,
                    ),
                ],
              ),
            ),
          ),

    ),
       );
  }
}
class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, this.onPressed, required this.iconColor});
  final void Function()? onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return
      Transform.translate(
        offset: Offset(-10, 10),
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          highlightColor:Color(0xFFeef0fc),
          splashColor:Color(0xFFeef0fc),
          onTap:onPressed,
          child: GestureDetector(
            child:   Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2.0,
                  color:iconColor,
                ),
              ),
              child:
              Icon(FontAwesomeIcons.question,size:23,color: iconColor, ),
              padding: EdgeInsets.zero,
              // constraints: BoxConstraints(),
            ),
          ),

        ),
      );
  }
}

