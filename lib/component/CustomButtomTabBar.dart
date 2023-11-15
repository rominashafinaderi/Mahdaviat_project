import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/ButtonTabBar.dart';

class CustomButtomTabBar extends StatefulWidget {
  final void Function(int)? onPressed;

  const CustomButtomTabBar({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<CustomButtomTabBar> createState() => _CustomButtomTabBarState();
}

class _CustomButtomTabBarState extends State<CustomButtomTabBar> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(23),
                ),
                width: 410,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
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
                            Icon(
                              FontAwesomeIcons.fileLines,
                              size: 17,
                              color: Color(0xFF82ebe4),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "فیلتر",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 10),
                    buildTabBar("برگزیده", 1),
                    buildTabBar("جدیدترین", 2),
                    buildTabBar("پربازدید", 3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabBar(String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        widget.onPressed?.call(index);
      },
      child: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: index == 2 ? index * 3.toDouble() + 32 : index * 3.toDouble() + 25,
              child: Container(
                width: 12,
                height: 2,
                decoration: BoxDecoration(
                  color: selectedIndex == index ? Color(0xFF58d3bd) : Colors.white,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            ButtonTabBar(
              isSelected: selectedIndex == index,
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
