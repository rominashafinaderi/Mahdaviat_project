import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onPressed;
  final void Function()? onPressed0;

  SearchAppBar({
    Key? key,
    required this.onPressed, this.onPressed0,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: IconButton(
            onPressed: onPressed0,
            icon: Icon(
              FontAwesomeIcons.ellipsisVertical,
              color: Colors.grey[400]!,
              size: 28,
            ),
          ),
        ),
      ],
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text('جستجوی پیشرفته',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      ),
      leading: Padding(
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
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_rounded,
                        color: Colors.grey,
                        size: 20,
            ),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
        ),
      ),

      flexibleSpace: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Color(0xFFF5F8FF),// Set your desired app bar color
        ),
      ),
      backgroundColor: Colors.transparent,
    );;
  }
}
