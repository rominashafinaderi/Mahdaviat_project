import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/TextButtonHeader.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';
import 'package:mahdaviat_project/filterScreen.dart';

class FirstMainScreen extends StatefulWidget {
  const FirstMainScreen({super.key});

  @override
  State<FirstMainScreen> createState() => _FirstMainScreenState();
}

List<String> imageAddress = [
  'assets/pic1.png',
  'assets/pic2.jpg',
  'assets/pic3.jpg',
  'assets/pic4.jpg',
  'assets/pic1.png',
  'assets/pic2.jpg',
  'assets/pic3.jpg',
  'assets/pic4.jpg',
];
List<String> title = [
  'کلیپ/استاد رائفی پور-عبرت های بنی اسرائیل',
  'عکس/آبیاری کوزه ای یا آبیاری تراوا روش های نوین',
  'صوت/شهید تهرانی مقدم,مغز متفکر ایران در ساخت موشک های مختلف ',
  ' متن/آیا رفتن ترامپ به معنای شکست فشار حداکثری',
  'کلیپ/استاد رائفی پور-عبرتهای بنی اسرائیل',
  'عکس/آبیاری کوزه ای یا آبیاری تراوا روش های نوین',
  'صوت/شهید تهرانی مقدم,مغز متفکر ایران در ساخت موشک های مختلف ',
  ' متن/آیا رفتن ترامپ به معنای شکست فشار حداکثری',
];
List<IconData> icons = [FontAwesomeIcons.youtube, FontAwesomeIcons.image, FontAwesomeIcons.volumeLow, FontAwesomeIcons.fileLines, FontAwesomeIcons.youtube, FontAwesomeIcons.image, FontAwesomeIcons.volumeLow, FontAwesomeIcons.fileLines];

List<Color> colors = [
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.orange,
  Colors.purple,
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.orange,
  Colors.purple,
];

class _FirstMainScreenState extends State<FirstMainScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = -1;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FF),
        appBar: CustomAppBar(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> FilterScreen()));
          },

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButtonHeader(
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
                TextButtonHeader(
                  iconData: FontAwesomeIcons.youtube,
                  text: "ویدیو",
                  isSelected: selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      selectedIndex =-1;
                    });
                    },
                ),
                TextButtonHeader(
                  iconData: FontAwesomeIcons.volumeLow,
                  text: "صوت",
                  isSelected: selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      selectedIndex = -1;
                    });
                    },
                ),
                TextButtonHeader(
                  iconData: FontAwesomeIcons.image,
                  text: "عکس",
                  isSelected: selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      selectedIndex = -1;
                    });
                    },
                ),
                TextButtonHeader(
                  iconData: FontAwesomeIcons.fileLines,
                  text: "متن",
                  isSelected: selectedIndex == 4,
                  onPressed: () {
                    setState(() {
                      selectedIndex = -1;
                    });
                    },
                ),
              ],
            ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: <Widget>[
            //     Padding(
            //       padding: const EdgeInsets.only(right:10),
            //       child: TextButtonHeader(
            //         iconData: FontAwesomeIcons.folderMinus,
            //         text: "برگزیده",
            //         onPressed2: () {},
            //         isSelected: selectedIndex == 0,
            //         press: () {
            //           selectedIndex = 0;
            //         },
            //       ),
            //     ),
            //     TextButtonHeader(
            //       iconData: FontAwesomeIcons.youtube,
            //       text: "ویدیو",
            //       onPressed2: () {},
            //       isSelected: selectedIndex == 1,
            //       press: () {
            //         selectedIndex = 1;
            //       },
            //     ),
            //     TextButtonHeader(
            //       iconData: FontAwesomeIcons.volumeLow,
            //       text: "صوت",
            //       onPressed2: () {},
            //       isSelected: selectedIndex == 2,
            //       press: () {
            //         selectedIndex = 2;
            //       },
            //     ),
            //     TextButtonHeader(
            //       iconData: FontAwesomeIcons.image,
            //       text: "عکس",
            //       onPressed2: () {},
            //       isSelected: selectedIndex == 3,
            //       press: () {
            //         selectedIndex = 3;
            //       },
            //     ),
            //     TextButtonHeader(
            //       iconData: FontAwesomeIcons.fileLines,
            //       text: "متن",
            //       onPressed2: () {},
            //       isSelected: selectedIndex == 4,
            //       press: () {
            //         selectedIndex = 4;
            //       },
            //     ),
            //   ],
            // ),
            SizedBox(height: 10),
            CustomTabBar(),
            // CustomButtonTabBar(),
            SizedBox(height: 5),
            Expanded(
                flex: 7,
                child: TabBarView(
                  children: [
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250 // <-- *****
                          ),
                      itemCount: imageAddress.length,
                      itemBuilder: (context, index) {
                        String imageAddress2 = imageAddress[index];
                        String title2 = title[index];
                        IconData icon = icons[index];
                        Color color = colors[index % colors.length];

                        return Container(
                          padding: EdgeInsets.only(right: index % 2 == 0 ? 20 : 10, left: index % 2 != 0 ? 20 : 10),
                          width: MediaQuery.sizeOf(context).width / 2,
                          height: (MediaQuery.sizeOf(context).width / 2) + 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Image.asset(
                                      imageAddress2,
                                      fit: BoxFit.cover,
                                    ),
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
                                            color: color,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Icon(
                                            icon,
                                            color: Colors.white.withOpacity(0.5),
                                            size: 24,
                                          ),
                                        )))
                              ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  title2,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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
