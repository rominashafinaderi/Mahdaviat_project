import 'package:flutter/material.dart';
class ButtonTabBar extends StatefulWidget {
  final bool isSelected;
  final String text;
  final VoidCallback onPressed;

  const ButtonTabBar({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<ButtonTabBar> createState() => _ButtonTabBarState();
}

class _ButtonTabBarState extends State<ButtonTabBar> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onPressed,
      child: Container(
          padding: EdgeInsets.all(17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Stack(
                children: [

                    //  Container(
                    //     margin: EdgeInsets.only(right:15),
                    //     width: 11,
                    //     height: 2,
                    //     decoration: BoxDecoration(
                    //         color: widget.isSelected ? Color(0xFF58d3bd):Colors.white,
                    //         borderRadius: BorderRadius.circular(2)),
                    //
                    // ),
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
        ),

    );
  }
}
