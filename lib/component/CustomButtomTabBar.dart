import 'package:flutter/material.dart';
import 'package:mahdaviat_project/component/ButtonTabBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButtomTabBar extends StatefulWidget {
  const CustomButtomTabBar({super.key});

  @override
  State<CustomButtomTabBar> createState() => _CustomButtomTabBarState();
}

class _CustomButtomTabBarState extends State<CustomButtomTabBar> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 1,
      child: Stack(children: [
        Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(23)),
              width: 410,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    // margin: EdgeInsets.symmetric(vertical:8 ,horizontal:10 ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Color(0xFFf7f6fe),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.fileLines, size: 17, color: Color(0xFF82ebe4)),
                          SizedBox(width:6),
                          Text(
                            "فیلتر",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 35),
                        width: 12,
                        height: 2,
                        decoration: BoxDecoration(
                            color:  selectedIndex ==1 ? Color(0xFF58d3bd):Colors.white,
                            borderRadius: BorderRadius.circular(2)),
                      ),
                      ButtonTabBar(
                        isSelected: selectedIndex ==1,
                        text: "برگزیده",
                        onPressed: () {
                          setState(() {
                            selectedIndex =1;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 38),
                        width: 12,
                        height: 2,
                        decoration: BoxDecoration(
                            color:  selectedIndex ==2 ? Color(0xFF58d3bd):Colors.white,
                            borderRadius: BorderRadius.circular(2)),
                      ),
                      ButtonTabBar(
                        isSelected: selectedIndex ==2,
                        text: "جدیدترین",
                        onPressed: () {
                          setState(() {
                            selectedIndex =2;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 33),
                        width: 12,
                        height: 2,
                        decoration: BoxDecoration(
                            color:  selectedIndex ==3 ? Color(0xFF58d3bd):Colors.white,
                            borderRadius: BorderRadius.circular(2)),
                      ),
                      ButtonTabBar(
                        isSelected: selectedIndex ==3,
                        text: "پربازدید",
                        onPressed: () {
                          setState(() {
                            selectedIndex =3;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
