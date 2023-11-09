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
import 'package:mahdaviat_project/ThirdMainScreen.dart';
import 'package:mahdaviat_project/AboutUsScreen.dart';

class SecondMainScreen extends StatefulWidget {
  const SecondMainScreen({
    super.key,
  });

  @override
  State<SecondMainScreen> createState() => _SecondMainScreenState();
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
  ' متن/آیا رفتن ترامپ به معنای شکست فشار حداکثری',
];
List<IconData> icons = [
  FontAwesomeIcons.youtube,
  FontAwesomeIcons.image,
  FontAwesomeIcons.volumeLow,
  FontAwesomeIcons.fileLines,
  FontAwesomeIcons.youtube,
  FontAwesomeIcons.image,
  FontAwesomeIcons.volumeLow,
  FontAwesomeIcons.fileLines,
  FontAwesomeIcons.fileLines,
];

List<Color> colors = [
  Colors.redAccent,
  Colors.orange,
  Colors.orange,
  Colors.orange,
  Colors.orange,
  Colors.orange,
  Colors.orange,
  Colors.orange,
  Colors.redAccent,
];
List<String> albumTitle = [
  'ارکان ظهور منجی',
  'رساله مهدویت',
  'توصیه های ظهور',
  'ارکان ظهور منجی',
  'رساله مهدویت',
  'توصیه های ظهور',
];

class _SecondMainScreenState extends State<SecondMainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FF),
        appBar: CustomAppBar(
          onPressed0: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdMainScreen()));
          },
          color:Color(0xFFF5F8FF),
          Titletext: AppBarTitle(text: 'فیلتر مطالب', textSize: 17, centered: false,),
          LeadingWidget: ArrowBackWidget(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutUsScreen()));
          }, iconColor:  Colors.grey[400]!, ),
          ActiongWidget:  AppBarActionListWidgets(customWidgets: [
           Trash_TextWidget(),
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
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 160 // <-- *****
                            ),
                        itemCount: imageAddress.length,
                        itemBuilder: (context, index) {
                          String imageAddress2 = imageAddress[index];
                          String title2 = title[index];
                          // IconData icon = icons[index];
                          Color color = colors[index % colors.length];

                          return Container(
                            padding: EdgeInsets.only(right: index % 2 == 0 ? 10 : 10, left: index % 2 != 0 ? 10 : 10),
                            width: MediaQuery.sizeOf(context).width / 2,
                            height: (MediaQuery.sizeOf(context).width / 2),
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
                                          left: 12,
                                          bottom: 11,
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: color,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Icon(
                                              FontAwesomeIcons.volumeLow,
                                              color: Colors.white.withOpacity(0.5),
                                              size: 12,
                                            ),
                                          )))
                                ]),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    title2,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                  ),
                                ),
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
