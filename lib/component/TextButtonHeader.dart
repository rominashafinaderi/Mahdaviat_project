import 'package:flutter/material.dart';
class TextButtonHeader extends StatefulWidget {
  final IconData iconData;
  final double iconSize;
   final Color iconColor;
  final String text;
  final  Color? color ;
  final VoidCallback onPressed;
  final bool isSelected;


  const TextButtonHeader({
    Key? key,
    required this.iconData,
    required this.text,
    required this.onPressed,
    required this.isSelected,
    this.iconSize=17,
     this.iconColor= Colors.black54,
    this.color,
  }) : super(key: key);

  @override
  _TextButtonHeaderState createState() => _TextButtonHeaderState();
}

class _TextButtonHeaderState extends State<TextButtonHeader> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onPressed();
      },
      child: ClipRRect(
         borderRadius : BorderRadius.circular(20),

      child: Container(
          padding: EdgeInsets.all(12),
          color: isSelected ? Colors.white : null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Icon(
                widget.iconData,
                size: widget.iconSize,
                color: isSelected ? Colors.greenAccent : Colors.grey[600]!,
              ),
              SizedBox(width:6),
              Text(
                widget.text,
                style: TextStyle(
                  color: isSelected ? Colors.grey[800]!:Colors.grey[600]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class TextButtonHeader extends StatefulWidget {
//   @override
//   State<TextButtonHeader> createState() => _TextButtonHeaderState();
//
//   final double iconSize;
//   final Color iconColor;
//   final bool isSelected;
//   final VoidCallback press;
//   IconData iconData;
//   String? text;
//   Color? color ;
//   void Function()? onPressed2;
//
//     TextButtonHeader({
//     this.iconSize = 17,
//     this.iconColor = Colors.black54,
//     required this.iconData,
//     this.text,
//     this.color,
//     this.onPressed2,
//       required this.isSelected,
//       required this.press,
//   });
// }
//
// class _TextButtonHeaderState extends State<TextButtonHeader> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         setState(() {
//           isSelected = !widget.isSelected;
//         });
//         widget.press();
//       },
//       child: Container(
//         color: widget.isSelected ? Colors.white : null,
//         child: TextButton(
//           style:ButtonStyle(
//             overlayColor: MaterialStateColor.resolveWith((states) => Colors.white),
//
//           ),
//           onPressed: widget.onPressed2,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//                 Icon(
//                   widget.iconData,
//                   size: widget.iconSize,
//                   color: widget.iconColor,
//                 ),
//               SizedBox(width:6),
//                   Text(
//                     widget.text!,
//                     style: TextStyle(
//                       color: widget.isSelected ? Colors.black : Colors.blueAccent,
//                     ),
//                   ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   TextDirection? textDirection;
// }

