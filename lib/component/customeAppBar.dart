  import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';
  class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
    final Color? color;
    final Widget? Titletext;
    final Widget? LeadingWidget;
    final Widget? ActiongWidget;

    CustomAppBar({
      Key? key,
      required this.color,
      required this.Titletext,
      required this.LeadingWidget,
      required this.ActiongWidget,
    }) : super(key: key);

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
        flexibleSpace: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: color,
          ),
        ),
        actions: ActiongWidget != null ? [ActiongWidget!] : null,
        title: Titletext,
        leading: LeadingWidget,
      );
    }
  }