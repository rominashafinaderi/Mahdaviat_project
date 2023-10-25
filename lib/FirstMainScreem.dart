import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/TextButtonHeader.dart';
import 'package:mahdaviat_project/component/customButtonTabBar.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';

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
  'کلیپ/استاد رائفی پور-عبرت\nهای بنی اسرائیل',
  'عکس/آبیاری کوزه ای یا آبیاری\nتراوا روش های نوین',
  'صوت/شهید تهرانی مقدم,مغز\nمتفکر ایران در ساخت موشک...',
  ' متن/آیا رفتن ترامپ به معنای \nشکست فشار حداکثری',
  'کلیپ/استاد رائفی پور-عبرت\nهای بنی اسرائیل',
  'عکس/آبیاری کوزه ای یا آبیاری\nتراوا روش های نوین',
  'صوت/شهید تهرانی مقدم,مغز\nمتفکر ایران در ساخت موشک...',
  ' متن/آیا رفتن ترامپ به معنای \nشکست فشار حداکثری',
];
List<IconData> icons = [
FontAwesomeIcons.youtube,
FontAwesomeIcons.image,
 FontAwesomeIcons.volumeLow,
FontAwesomeIcons.fileLines,
  FontAwesomeIcons.youtube,
  FontAwesomeIcons.image,
  FontAwesomeIcons.volumeLow,
  FontAwesomeIcons.fileLines
];

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FF),
        appBar: CustomAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 5),
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
            SizedBox(height: 10),
            CustomTabBar(),
            // CustomButtonTabBar(),
            SizedBox(height: 15),
            Expanded(
                flex: 7,
                child: TabBarView(
                  children: [
                         GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),

                          itemCount: imageAddress.length,
                          itemBuilder: (context, index) {
                            String imageAddress2 = imageAddress[index];
                            String title2 = title[index];
                            IconData icon = icons[index];
                            Color color = colors[index % colors.length];

                            return Container(
                              padding: EdgeInsets.only(right: index%2==0 ? 15 : 7.5, left: index%2 !=0 ? 15 : 7.5,bottom: 40),
                              color: Colors.red,
                           width: MediaQuery.sizeOf(context).width/2,
                              height:(  MediaQuery.sizeOf(context).width/2) +60,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(children: [

                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(26),
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.asset(
                                            imageAddress2,
                                            // width: 160,
                                            // height: 160,
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
                                                color:color ,
                                                borderRadius: BorderRadius.circular(8),

                                              ),
                                              child: Icon(
                                                icon,
                                                color: Colors.white.withOpacity(0.5),
                                                size: 24,
                                              ),
                                            )))
                                  ]),
                                  Text(
                                      title2,
                                      style: TextStyle(
                                        fontSize: 10,
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
