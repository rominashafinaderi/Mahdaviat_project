import 'package:flutter/material.dart';
import 'package:mahdaviat_project/FirstMainScreem.dart';
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

              ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor:ButtonColor,
                    shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // <-- Radius
                ),
                ),
                  onPressed: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  FirstMainScreen()),
                  );
                  },
                  child:
                  Padding(
                    padding: EdgeInsets.only(bottom:22,top:22,left: 6,right: 6),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Text('عضویت در برنامه', style:TextStyle(fontSize:20,color: Colors.white)),
                        SizedBox(
                          width:100,
                        ),
                    Container(
                          margin: EdgeInsets.all(1),
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)
                          ),
                          child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white,),
                        ),


                      ],
                    ),
                  ),
              ),
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
