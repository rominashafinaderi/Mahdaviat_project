import 'package:flutter/material.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/TextButtonHeader.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';

class FirstMainScreen extends StatefulWidget {
  const FirstMainScreen({super.key});

  @override
  State<FirstMainScreen> createState() => _FirstMainScreenState();
}

class _FirstMainScreenState extends State<FirstMainScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xFFF5F8FF),
          appBar: CustomAppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextButtonHeader(
                      iconData: FontAwesomeIcons.folderMinus,
                      text: "برگزیده",
                      onPressed: () {},
                    ),
                  ),
                  TextButtonHeader(
                    iconData: FontAwesomeIcons.youtube,
                    text: "ویدیو",
                    onPressed: () {},
                  ),
                  TextButtonHeader(
                    iconData: FontAwesomeIcons.volumeLow,
                    text: "صوت",
                    onPressed: () {},
                  ),
                  TextButtonHeader(
                    iconData: FontAwesomeIcons.image,
                    text: "عکس",
                    onPressed: () {},
                  ),
                  TextButtonHeader(
                    iconData: FontAwesomeIcons.fileLines,
                    text: "متن",
                    onPressed: () {},
                  ),
                ],
              ),
              CustomTabBar(),
              Expanded(
                flex:8,
                  child: TabBarView(
                    children:[
                      Padding(
                      padding: EdgeInsets.zero,
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(100, (index) {
                          return Center(
                            child:Padding(
                              padding: const EdgeInsets.only(bottom:10,right: 15,left:15,top: 10),
                              child: Container(
                                width: 500,
                                height: 700,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                              ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(22),
                                      child:  Image.asset('assets/images.png',
                                        height:150,
                                        width: 180.0,
                                      ),
                                    ),
                                    Text('fggeg')
                                  ],
                                ),

                                ),
                          ),
                            );
                        }
                        ),
                      ),
                    ),
                      Placeholder(),
                    ] ,
                  )
              )
            ],
          ),
      ),
    );
  }
}
