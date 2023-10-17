import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';

class FirstMainScreen extends StatefulWidget {
  const FirstMainScreen({super.key});

  @override
  State<FirstMainScreen> createState() => _FirstMainScreenState();
}

class _FirstMainScreenState extends State<FirstMainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FF),
       appBar: AppBar(
         automaticallyImplyLeading: false,
         systemOverlayStyle: const SystemUiOverlayStyle(
           statusBarColor: Colors.transparent,
           statusBarIconBrightness: Brightness.dark,
         ),
         actions: [
         Padding(
               padding: const EdgeInsets.only(top:10,left:20),
           child: IconButton(
                 onPressed: () {},
                 icon: Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.grey[400]!,size:30,)
             ),
           ),

         ],
         title:
         Padding(
           padding: const EdgeInsets.only(top:10,right: 5),
           child: SizedBox(
             height: 45,
             width: 35,
             child: Container(
               margin: EdgeInsets.all(2),
               padding: EdgeInsets.all(0),
               decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border: Border.all(width: 2.0,color: Colors.grey[400]!,)
               ),

                 child: Padding(
                   padding: const EdgeInsets.only(left: 16,bottom: 20),
                   child: IconButton(
                       onPressed: () {},
                       icon:Icon(Icons.arrow_back_ios_rounded,color: Colors.grey[400]!,size:20,
                       )
               ),
                 ),
             ),
           ),
         ),

         backgroundColor: Colors.transparent,
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [

              Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          // backgroundColor: Colors.white,
                          foregroundColor: Colors.transparent, // Background color
                          enableFeedback: true,
                        ),
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.folderMinus,size: 17,color: Colors.black.withOpacity(0.7)),
                            SizedBox(width:6),
                            Text("برگزیده",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.youtube,size: 17,color: Colors.black.withOpacity(0.7)),
                          SizedBox(width:6),
                          Text("ویدیو",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.music_video_rounded,size: 22,color: Colors.black.withOpacity(0.7)),
                          SizedBox(width:5,),
                          Text("صوت",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.image,size: 17,color: Colors.black.withOpacity(0.7)),
                          SizedBox(width:6),
                          Text("عکس",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.fileLines,size: 17,color: Colors.black.withOpacity(0.7)),
                          SizedBox(width:6),
                          Text("متن",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        ],
                      ),
                    ),
                  ],

           ),
           Expanded(
             flex: 1,
             child: Padding(
                   padding: EdgeInsets.only(bottom:0,top: 10),
                   child: Column(
                     children: <Widget>[
                       Container(
                         margin: EdgeInsets.only(left: 35,right:35),
                         child: SegmentedTabControl(
                           radius: Radius.circular(10),
                           backgroundColor: Colors.white,
                           indicatorColor: Color(0xFFEFF1FE),
                           tabTextColor: Colors.black,
                           selectedTabTextColor: Colors.black,
                           squeezeIntensity: 2,
                           height: 65,
                           tabPadding: EdgeInsets.symmetric(horizontal:0),
                           tabs: [
                              SegmentTab(label:"همه پست ها" ),
                             SegmentTab(label:"همه آلبوم ها" )
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
           ),
           Expanded(
             flex: 3,
               child: Padding(
                 padding: EdgeInsets.only(bottom:0,top: 10),
                 child:
                 GridView.count(
                   crossAxisCount: 2,
                     children: List.generate(100, (index) {
                       return Center(
                         child: Text(
                           'Item $index',
                           style: Theme.of(context).textTheme.headlineSmall,
                         ),
                       );
                     }),
                 ),
               )
           
           )
         ],
       ),

      ),
    );
  }
}
