import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarActionWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarLeadigWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarTitle.dart';
import 'package:mahdaviat_project/component/CustomButtomTabBar.dart';
import 'package:mahdaviat_project/component/FolderShape.dart';
import 'package:mahdaviat_project/component/TextButtonHeader.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';

class ThirdMainScreen extends StatefulWidget {
  const ThirdMainScreen({
    super.key,
  });

  @override
  State<ThirdMainScreen> createState() => _ThirdMainScreenState();
}

List<String> imageAddress = [
  'assets/pic2.jpg',
  'assets/pic3.jpg',
  'assets/images.jpg',
  'assets/download.png',
  'assets/download.png',
  'assets/images.jpg',
  'assets/pic2.jpg',
  'assets/pic3.jpg',
];

List<Color> colors = [
  Colors.greenAccent,
];
List<String> albumTitle = [
  'ارکان ظهور منجی',
  'رساله مهدویت',
  'توصیه های ظهور',
  'ارکان ظهور منجی',
  'رساله مهدویت',
  'توصیه های ظهور',
];

class _ThirdMainScreenState extends State<ThirdMainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          onPressed0: () {},
          color:Color(0xFFF5F8FF),
          Titletext: AppBarTitle(text: '', textSize: 0, centered: false,),
          LeadingWidget: ArrowBackWidget(onPressed: (){}, iconColor:  Colors.grey[400]!,),
          ActiongWidget: AppBarActionListWidgets(customWidgets: [
            GearWidget(iconColor: Colors.deepOrange,),
            SearchWidget(iconColor: Colors.white),
          ],),

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
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
                  child: TextButtonHeader(
                    iconData: FontAwesomeIcons.youtube,
                    text: "ویدیو",
                    isSelected: selectedIndex == 1,
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
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
                  child: TextButtonHeader(
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
                  child: TextButtonHeader(
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
                  child: TextButtonHeader(
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
            ),
            SizedBox(height: 10),
            CustomTabBar(
              firstTitle: 'همه پست ها',
              secondTitle: 'همه آلبوم ها',
            ),
            Expanded(
                flex: 6,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child:
                      // GridView.extent(
                      //   maxCrossAxisExtent:MediaQuery.sizeOf(context).width/2,
                      //   padding: const EdgeInsets.all(10),
                      //   mainAxisSpacing: 30,
                      //   crossAxisSpacing: 10,
                      //   children: List.generate(
                      //     imageAddress.length,
                      //         (index) {
                      //       return Container(
                      //         child: Column(
                      //           children: [
                      //             Container(
                      //               child: Stack(
                      //                 children: [
                      //                   ClipRRect(
                      //                     child: Image.asset(
                      //                       imageAddress[index],
                      //                     ),
                      //                   ),
                      //
                      //                        Positioned(
                      //                           left: 18,
                      //                           bottom: 18,
                      //                           child: Container(
                      //                             width: 40,
                      //                             height: 40,
                      //                             decoration: BoxDecoration(
                      //                               color: Colors.greenAccent,
                      //                               borderRadius: BorderRadius.circular(8),
                      //                             ),
                      //                             child: Icon(
                      //                               FontAwesomeIcons.image,
                      //                               color: Colors.white.withOpacity(0.5),
                      //                               size: 20,
                      //                             ),
                      //                           ))
                      //                 ],
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                      GridView.builder(

                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                            // // mainAxisExtent:221 ,// <-- *****
                            // mainAxisSpacing: 15,
                            // // childAspectRatio: 2/3,

                        ),
                        itemCount: imageAddress.length,
                        itemBuilder: (context, index) {
                          String imageAddress2 = imageAddress[index];
                          // IconData icon = icons[index];
                          Color color = colors[index % colors.length];

                          return Container(
                            padding: EdgeInsets.only(right: index % 2 == 0 ? 10 : 10, left: index % 2 != 0 ? 10 : 10),
                            // margin: EdgeInsets.only(right: index % 2 == 0 ? 10 : 10, left: index % 2 != 0 ? 10 : 10),
                            width: MediaQuery.sizeOf(context).width / 2,
                            height: (MediaQuery.sizeOf(context).height ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.asset(
                                        imageAddress2,
                                        // fit: BoxFit.cover,
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
                                              FontAwesomeIcons.image,
                                              color: Colors.white.withOpacity(0.5),
                                              size: 20,
                                            ),
                                          )))
                                ]),

                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Column(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 22, left: 22),
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 160 // <-- *****
                              ),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                if (index == 1) {
                                  return Container(
                                    width: 100,
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Container(
                                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                                            height: 100,
                                            width: 100,
                                            margin: EdgeInsets.all(10),
                                            padding: EdgeInsets.all(10),
                                            child: CustomPaint(
                                              painter: FolderShapePainter(color: Color(0xFFe9ebfa)),
                                            ),
                                          ),
                                          Container(
                                              child: Positioned(
                                                  left: 28,
                                                  bottom: 28,
                                                  child: Container(
                                                    width: 22,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF00e0be),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: Icon(
                                                      FontAwesomeIcons.solidStar,
                                                      color: Colors.white,
                                                      size: 11,
                                                    ),
                                                  )))
                                        ]),
                                        SizedBox(height: 5),
                                        Text(
                                          albumTitle[index],
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                } else if (index == 2) {
                                  return Container(
                                    width: 100,
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                                          height: 100,
                                          width: 100,
                                          margin: EdgeInsets.all(10),
                                          padding: EdgeInsets.all(10),
                                          child: CustomPaint(
                                            painter: FolderShapePainter(color: Color(0xFF82ebe4)),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          albumTitle[index],
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 100,
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                                          height: 100,
                                          width: 100,
                                          margin: EdgeInsets.all(10),
                                          padding: EdgeInsets.all(10),
                                          child: CustomPaint(
                                            painter: FolderShapePainter(color: Color(0xFFe9ebfa)),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          albumTitle[index],
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
            CustomButtomTabBar()

          ],
        ),
      ),
    );
  }
}
