import 'package:flutter/material.dart';
import 'package:mahdaviat_project/component//ButtonHeader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       Container(
            decoration: BoxDecoration(
              boxShadow: selectedIndex == 0
                  ? [
                BoxShadow(
                  color: Colors.grey[400]!.withOpacity(0.5),
                  blurRadius: 25,
                ),
              ]
                  : [],
            ),
            child: ButtonHeader(
              iconData: FontAwesomeIcons.folderMinus,
              text: "برگزیده",
              isSelected: selectedIndex == 0,
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
          ),
        Container(
          decoration: BoxDecoration(
            boxShadow: selectedIndex == 1
                ? [
              BoxShadow(
                color: Colors.grey[400]!.withOpacity(0.5),
                blurRadius: 25,
              ),
            ]
                : [],
          ),
          child: ButtonHeader(
            iconData: FontAwesomeIcons.youtube,
            text: "ویدیو",
            isSelected: selectedIndex == 1,
            onPressed: () {
              setState(() {
                selectedIndex =1;
              });
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: selectedIndex == 2
                ? [
              BoxShadow(
                color: Colors.grey[400]!.withOpacity(0.5),
                blurRadius: 25,
              ),
            ]
                : [],
          ),
          child: ButtonHeader(
            iconData: FontAwesomeIcons.volumeLow,
            text: "صوت",
            isSelected: selectedIndex == 2,
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: selectedIndex == 3
                ? [
              BoxShadow(
                color: Colors.grey[400]!.withOpacity(0.5),
                blurRadius: 25,
              ),
            ]
                : [],
          ),
          child: ButtonHeader(
            iconData: FontAwesomeIcons.image,
            text: "عکس",
            isSelected: selectedIndex == 3,
            onPressed: () {
              setState(() {
                selectedIndex = 3;
              });
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: selectedIndex == 4
                ? [
              BoxShadow(
                color: Colors.grey[400]!.withOpacity(0.5),
                blurRadius: 25,
              ),
            ]
                : [],
          ),
          child: ButtonHeader(
            iconData: FontAwesomeIcons.fileLines,
            text: "متن",
            isSelected: selectedIndex == 4,
            onPressed: () {
              setState(() {
                selectedIndex = 4;
              });
            },
          ),
        ),
      ],
    );
  }
}
