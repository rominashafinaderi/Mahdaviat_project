import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarActionWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarLeadigWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarTitle.dart';
import 'package:mahdaviat_project/component/CustomButtomTabBar.dart';
import 'package:mahdaviat_project/component/FolderShape.dart';
import 'package:mahdaviat_project/component/HeaderWidget.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';
import 'package:mahdaviat_project/filterScreen.dart';
import 'package:mahdaviat_project/searchScreen.dart';

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
List<String> albumTitle = [
  'ارکان ظهور منجی',
  'رساله مهدویت',
  'توصیه های ظهور',
  'ارکان ظهور منجی',
  'رساله مهدویت',
  'توصیه های ظهور',

];
class _FirstMainScreenState extends State<FirstMainScreen> {
  int selectedIndex = 0;
  StreamController<bool> _loadingStreamController = StreamController<bool>();

  @override
  void dispose() {
    _loadingStreamController.close();
    super.dispose();
  }

  void _handleButtonClick() {
    _loadingStreamController.sink.add(true);
    Timer(Duration(seconds:2), () {
      _loadingStreamController.sink.add(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FF),
        appBar: CustomAppBar(
          color:Color(0xFFF5F8FF),
          Titletext: AppBarTitle(text: '', textSize: 0, centered:false,),
          LeadingWidget: ArrowBackWidget(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> FilterScreen()));
          }, iconColor:  Colors.grey[400]!,),
          ActiongWidget: AppBarActionListWidgets(customWidgets: [
            SearchWidget(iconColor: Colors.grey[400]!,onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen()));
            }),
          ],),



        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            HeaderWidget(),
            SizedBox(height: 10),
            CustomTabBar(firstTitle: 'همه پست ها', secondTitle: 'همه آلبوم ها',),
            Expanded(
                flex: 7,
                child: StreamBuilder<bool>(
                    stream: _loadingStreamController.stream,
                    initialData: false,
                    builder: (context, snapshot) {
                      if (snapshot.data == true) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                    }
                      return TabBarView(
                        children: [
                          GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 240 // <-- *****
                            ),
                            itemCount: imageAddress.length,
                            itemBuilder: (context, index) {
                              String imageAddress2 = imageAddress[index];
                              String title2 = title[index];
                              IconData icon = icons[index];
                              Color color = colors[index % colors.length];

                              return Container(
                                padding: EdgeInsets.only(right: index % 2 == 0 ? 27 : 12, left: index % 2 != 0 ? 30 : 12),
                                width: MediaQuery
                                    .sizeOf(context)
                                    .width / 2,
                                height: (MediaQuery
                                    .sizeOf(context)
                                    .width / 2),
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
                                      padding: const EdgeInsets.only(top: 13),
                                      child: Text(
                                        title2,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
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
                                              Stack(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(20)
                                                      ),
                                                      height: 100,
                                                      width: 100,
                                                      margin: EdgeInsets.all(10),
                                                      padding: EdgeInsets.all(10),
                                                      child:
                                                      CustomPaint(
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

                                                  ]
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                albumTitle[index],
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold
                                                ),
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
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20)
                                                ),
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
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold
                                                ),
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
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20)
                                                ),
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
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold
                                                ),
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
                      );
                  }
                )
            ),
            CustomButtomTabBar(onPressed: (index){
              print(index);
              _handleButtonClick();
            },)

          ],
        ),
      ),
    );
  }
}
