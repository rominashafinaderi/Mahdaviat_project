import 'package:flutter/material.dart';
import 'package:mahdaviat_project/FirstMainScreen.dart';
import 'package:mahdaviat_project/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50 ),
                    child: Text('اپلیکیشن جامع مهدویت\n مهدیاران',textDirection: TextDirection.rtl,style: TextStyle(fontFamily:'bold' ,fontSize:25,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    height:20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:0),
                    child: Text('هدف نشر رسانه در حوزه مهدویت در این دوران\nآخرالزمان و فرهنگ سازی مهدویت',textDirection: TextDirection.rtl,style: TextStyle(fontFamily:'normal' ,fontSize:16)),
                  ),
                  SizedBox(
                    height:50,
                  ),
                ],
              ),

               Padding(
                 padding: EdgeInsets.only(right: 10),
                  child:
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF2F64DD),
                          Color(0xFF3665C6),
                          Color(0xFF3B73C6),

                        ],
                        begin: Alignment.centerLeft, // Gradient start alignment
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  FirstMainScreen()),
                                );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // Set the button color to transparent
                        onPrimary: Colors.transparent, // Set the button text color to transparent
                        shadowColor: Colors.transparent, // Set the button shadow color to transparent
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child:Padding(
                                padding: EdgeInsets.only(bottom:22,top:22,left: 6,right: 10),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: <Widget>[
                                    Text('عضویت در برنامه', style:TextStyle(fontSize:14,fontWeight: FontWeight.bold,color: Colors.white)),
                                    SizedBox(
                                      width:120,
                                    ),
                                Container(
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 2.0,
                                              color: Colors.white),
                                      ),
                                      child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white),
                                    ),
                        ]

                      )
                    ),
                  )
                  // ElevatedButton(
                  //   style:ElevatedButton.styleFrom(
                  //     backgroundColor:ButtonColor,
                  //       shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20), // <-- Radius
                  //   ),
                  //   ),
                  //     onPressed: (){
                  //    Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) =>  FirstMainScreen()),
                  //     );
                  //     },
                  //
                  //
                  //       child: Padding(
                  //         padding: EdgeInsets.only(bottom:22,top:22,left: 6,right: 10),
                  //         child: Wrap(
                  //           crossAxisAlignment: WrapCrossAlignment.center,
                  //           children: <Widget>[
                  //             Text('عضویت در برنامه', style:TextStyle(fontSize:14,fontWeight: FontWeight.bold,color: Colors.white)),
                  //             SizedBox(
                  //               width:120,
                  //             ),
                  //         Container(
                  //               margin: EdgeInsets.all(1),
                  //               padding: EdgeInsets.all(1),
                  //               decoration: BoxDecoration(
                  //                   shape: BoxShape.circle,
                  //                   border: Border.all(width: 2.0,
                  //                       color: Colors.white),
                  //               ),
                  //               child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white),
                  //             ),
                  //
                  //
                  //           ],
                  //         ),
                  //       ),
                  //
                  // ),
                ),),

              SizedBox(
                height:20,
              ),
              Padding(
                padding: const EdgeInsets.only(right:95 ),
                child: TextButton(
                    onPressed: (){},
                    child: Text('ورود به عنوان مهمان',style: TextStyle(fontSize:15,color: Colors.black),)
                ),
              ),
              SizedBox(
                height:70,
              ),
            ],
          )
      ),
    );
  }
}
