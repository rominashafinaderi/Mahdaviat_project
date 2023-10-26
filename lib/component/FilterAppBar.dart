
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class filterAppBar extends StatelessWidget implements PreferredSizeWidget{
  final void Function()? onPressed;
  const filterAppBar({super.key, this.onPressed});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      actions: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('پاک کردن همه',
              style: TextStyle(
                color:  Colors.grey[400]!,
                fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left:3),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.grey[400]!,
                  size:20,
                ),
              ),
            ),
          ],
        ),
      ],
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 5),
            child: SizedBox(
              height: 45,
              width: 35,
              child: Container(
                margin: const EdgeInsets.all(2),
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2.0,
                    color: Colors.grey[400]!,
                  ),
                ),
                child:
                IconButton(
                  onPressed:onPressed,
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.grey,
                    size: 20,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 10),
            child: Text('فیلتر مطالب',
              style: TextStyle(
                 fontWeight: FontWeight.bold,
                fontSize:20
              ),),
          ),        ],
      ),

      flexibleSpace: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Color(0xFFF5F8FF),// Set your desired app bar color
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
