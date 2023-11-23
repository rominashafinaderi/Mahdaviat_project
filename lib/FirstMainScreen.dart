import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mahdaviat_project/component/AlbumWidget.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarActionWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarLeadigWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarTitle.dart';
import 'package:mahdaviat_project/component/CustomButtomTabBar.dart';
import 'package:mahdaviat_project/component/GridVIewWidget.dart';
import 'package:mahdaviat_project/component/HeaderWidget.dart';
import 'package:mahdaviat_project/component/PostItem.dart';
import 'package:mahdaviat_project/component/customTabBar.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';
import 'package:mahdaviat_project/filterScreen.dart';
import 'package:mahdaviat_project/helpers.dart';
import 'package:mahdaviat_project/models/post.dart';
import 'package:mahdaviat_project/searchScreen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FirstMainScreen extends StatefulWidget {
  const FirstMainScreen({super.key});

  @override
  State<FirstMainScreen> createState() => _FirstMainScreenState();
}

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


  Future<void> fetchPosts() async {
    _loadingStreamController.sink.add(true);
    String jsonString = await loadTextAsset(getJsonPath("postList.json"));
    var json = jsonDecode(jsonString);
    for (final item in json["posts"]) {
      posts.add(Post.fromJson(item));
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
                      return TabBarView(
                        children: [
                         RefreshIndicator(
                           onRefresh: fetchPosts,
                           child: Skeletonizer(
                             enabled: snapshot.data == true,
                             child: GridViewWidget(
                                  itemCount: posts.length,
                                  crossCount: 2,
                                  mainExtent: 240,
                                  GridWidget: (int index) {
                                    return PostItem(
                                      padding: EdgeInsets.only(right: index % 2 == 0 ? 27 : 12, left: index % 2 != 0 ? 30 : 12),
                                      post:posts[index],
                                    );
                                  },
                                ),
                           ),
                         ),

                      Skeletonizer(
                      enabled: snapshot.data == true,
                      child:
                          AlbumWidget()
                      )
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
