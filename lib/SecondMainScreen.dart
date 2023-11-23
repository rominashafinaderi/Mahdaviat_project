import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mahdaviat_project/component/AlbumWidget.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarActionWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarLeadigWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarTitle.dart';
import 'package:mahdaviat_project/component/CustomButtomTabBar.dart';
import 'package:mahdaviat_project/component/HeaderWidget.dart';
import 'package:mahdaviat_project/component/PostItemSecond.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';
import 'package:mahdaviat_project/ThirdMainScreen.dart';
import 'package:mahdaviat_project/AboutUsScreen.dart';
import 'package:mahdaviat_project/helpers.dart';
import 'component/GridVIewWidget.dart';
import 'models/post.dart';
import 'package:skeletonizer/skeletonizer.dart';


class SecondMainScreen extends StatefulWidget {
  const SecondMainScreen({
    super.key,
  });

  @override
  State<SecondMainScreen> createState() => _SecondMainScreenState();
}

class _SecondMainScreenState extends State<SecondMainScreen> {
  int selectedIndex = 0;
  StreamController<bool> _loadingStreamController = StreamController<bool>();
  List<Post> posts2= [];

  @override
  void dispose() {
    _loadingStreamController.close();
    super.dispose();
  }

  void _handleButtonClick() {
    _loadingStreamController.sink.add(true);
    Timer(Duration(seconds:1), () {
      _loadingStreamController.sink.add(false);
    });
  }
  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    _loadingStreamController.sink.add(true);
    String jsonString = await loadTextAsset(getJsonPath("postList2.json"));
    var json = jsonDecode(jsonString);
    posts2 = []; // این خط را اضافه کنید
    for (final item in json["posts"]) {
      posts2.add(Post.fromJson(item));
    }
    Timer(Duration(seconds: 1), () {
      _loadingStreamController.sink.add(false);
      setState(() {});
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdMainScreen()));
          }, iconColor:  Colors.grey[400]!,),
          ActiongWidget: AppBarActionListWidgets(customWidgets: [
            SearchWidget(iconColor: Colors.grey[400]!,onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutUsScreen()));
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
            CustomTabBar(
              firstTitle: 'همه پست ها',
              secondTitle: 'همه آلبوم ها',
            ),
            Expanded(
                flex: 6,
                child: StreamBuilder<bool>(
                  stream: _loadingStreamController.stream,
                  initialData: false,
                  builder: (context, snapshot) {
                    return TabBarView(
                      children: [
                        RefreshIndicator(
                          onRefresh: fetchPosts,
                          child: Skeletonizer(
                            enabled: snapshot.data == true,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20, left: 20),
                             child: GridViewWidget(
                                itemCount: posts2.length,
                                crossCount:3,
                                mainExtent: 160,
                                GridWidget: (int index) {
                                  return PostItem_2(
                                      padding: EdgeInsets.only(right: index % 2 == 0 ? 10 : 10, left: index % 2 != 0 ? 10 : 10),
                                      post2:posts2[index]
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        AlbumWidget(),
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

