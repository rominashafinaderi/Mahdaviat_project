import 'package:flutter/material.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/TextButtonHeader.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';
import 'package:mahdaviat_project/component/customButtonTabBar.dart';

class FirstMainScreen extends StatefulWidget {
  const FirstMainScreen({super.key});

  @override
  State<FirstMainScreen> createState() => _FirstMainScreenState();
}

List<String> imageAddress = [
  'assets/images3.jpg',
  'assets/images4.jpg',
  'assets/images5.jpg',
  'assets/images6.jpg',
  'assets/images7.jpg',
  'assets/images8.jpg',
  'assets/download.jpg',
  'assets/images9.jpg',
];
List<String> title = [
  'کلیپ/',
  'عکس/',
  'صوت/',
  'متن/',
  'کلیپ/',
  'عکس/',
  'صوت/',
  'متن/',
  'کلیپ/'
];

class _FirstMainScreenState extends State<FirstMainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FF),
        appBar: CustomAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                flex:6,
                child: TabBarView(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom:60),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: imageAddress.length,
                          itemBuilder: (context, index) {
                            String imageAddress2 = imageAddress[index];
                            // String title2 = title[index];

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(26),
                                    child: Image.asset(
                                      imageAddress2,
                                      width: 160,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                      child: Positioned(
                                          left: 18,
                                          bottom: 18,
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Colors.black.withOpacity(0.5),

                                              ),
                                            ),
                                            child: Icon(
                                              FontAwesomeIcons.youtube,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                          )))
                                ]),
                                SizedBox(height:8),
                                Text(
                                  'title2',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                    ),
                    Placeholder(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
