import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarActionWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarLeadigWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarTitle.dart';
import 'package:mahdaviat_project/component/CustomButtomTabBar.dart';
import 'package:mahdaviat_project/component/FolderShape.dart';
import 'package:mahdaviat_project/component/HeaderWidget.dart';
import 'package:mahdaviat_project/component/PostItem.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';
import 'package:mahdaviat_project/filterScreen.dart';
import 'package:mahdaviat_project/helpers.dart';
import 'package:mahdaviat_project/models/post.dart';
import 'package:mahdaviat_project/searchScreen.dart';

class FirstMainScreen extends StatefulWidget {
  const FirstMainScreen({super.key});

  @override
  State<FirstMainScreen> createState() => _FirstMainScreenState();
}





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
 List<Post> posts= [];
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
  void initState() {
    super.initState();
   fetchPosts();
  }

  void fetchPosts() async {
    String jsonString = await loadTextAsset(getJsonPath("postList.json"));
    var json = jsonDecode(jsonString);
    for (final item in json["posts"]) {
      posts.add(Post.fromJson(item));
    }
    setState(() {});
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
            CustomTabBar(firstTitle: 'همه پست ها', secondTitle: 'همه آلبوم ها'),
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
                            itemCount: posts.length,
                            itemBuilder: (context, index) {

                              return PostItem(
                                  padding: EdgeInsets.only(right: index % 2 == 0 ? 27 : 12, left: index % 2 != 0 ? 30 : 12),
                              post:posts[index] );
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
