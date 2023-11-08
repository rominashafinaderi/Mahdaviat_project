import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarActionWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarLeadigWidgets.dart';
import 'package:mahdaviat_project/component/AppBarWidgets/AppBarTitle.dart';
import 'package:mahdaviat_project/component/customeAppBar.dart';
import 'package:flutter/animation.dart';

class AboutUsScreen extends StatelessWidget {

   AboutUsScreen({super.key});

  List<IconData> icons = [
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.envelope,
    FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.twitter,
    FontAwesomeIcons.telegram,
    FontAwesomeIcons.circlePlay,
    FontAwesomeIcons.circleNodes,
    FontAwesomeIcons.vectorSquare,
    FontAwesomeIcons.youtube
  ];
   List<List<Color>> gradientColors = [
     [Color(0xFFff4caa),Color(0xFFfe01a9)],
     [Color(0xFF23bd97),Color(0xFF02f177)],
     [Color(0xFF45b7f4), Color(0xFF01d6fe)],
     [Color(0xFF439df3),Color(0xFF018cfe)],
     [Color(0xFF459cec), Color(0xFF008bfe)],
     [Color(0xFF3e94af), Color(0xFF0065c4)],
     [Color(0xFFf23470), Color(0xFFf23470)],
     [Color(0xFFeb8c2e), Color(0xFFff5d05)],
     [Color(0xFFf80000), Color(0xFFfa0401)],

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F8FF),
        appBar: CustomAppBar(
          color: Color(0xFF115eb6),
          Titletext: AppBarTitle(text: '', textSize: 0),
          LeadingWidget: ArrowBackWidget(onPressed: (){}),
          ActiongWidget: AppBarActionListWidgets(onPressed: (){},icon:Icon(FontAwesomeIcons.magnifyingGlass),icon2:null,onPressed2: (){}, actionText: '',),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF115eb6),
                Color(0xFF00aeb2),
              ],
            ),
          ),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF04bcd8),
                      Color(0xFF0cb0d6),
                      Color(0xFF16a2d7),
                      Color(0xFF248fd5),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20)),
              width: 350,
              height: 75,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 30),
                child: Row(
                  children: [
                    Text(
                      'درباره ما (موسسه مصاف)',
                      style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF0fcbd7),
                      ),
                      child: Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        child: Icon(FontAwesomeIcons.exclamation, size: 14, color: Colors.white),
                        padding: EdgeInsets.zero,
                        // constraints: BoxConstraints(),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Text(
                'واحد مهدویت موسسه\n مصاف ایرانیان',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontFamily: 'bold', fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right:25,left: 30),
              child: Text('هدف نشر رسانه در حوزه مهدویت در این دوران آخرالزمان\nو فرهنگ سازی مهدویت اعتقاد به منجی و ولی کامل\nباوری مقطعی و مربوط به شرایط و وضعیت خاص گذشته\nیا حال یا آینده نیست,بلکه از باور های اساسی در همه \nادیان است.چنانچه گفتیم,این باور در تشیع جایگاه ویژه ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontFamily: 'normal', fontSize:15, color: Colors.white,
                  )
              ),
            ),
            SizedBox(height: 10,),

              Align(
              alignment: Alignment.center,
              child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              ),
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('مصاف در شبکه های اجتماعی',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(fontFamily: 'bold', fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                              SizedBox(width: 65),
                              Icon(Icons.person_outline,color:Color(0xFF43c7b1),size: 35,)
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:25),
                        child: Text('دریافت آخرین خبر ها و اطلاعیه های حوزه مهدویت در مصاف',
                          style: TextStyle(fontFamily: 'bold', fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey[500]),),
                      ),
                      SizedBox(height: 17),
                      Container(
                        height:214,
                        child: GridView.builder(
                          itemCount:9,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:4,
                          ),
                          itemBuilder: (context, index) {
                            List<Color> currentGradientColors = gradientColors[index % gradientColors.length];
                            Color startColor = currentGradientColors[0]; // رنگ شروع گرادیانت اول
                            Color endColor = currentGradientColors[1];

                            LinearGradient gradient = LinearGradient(
                              colors: [endColor,startColor ],
                              begin: Alignment(-1.0, -1.0),
                              end: Alignment(-1.0,1.0),
                            );
                            return Container(
                              decoration: BoxDecoration(
                                gradient: gradient,
                                borderRadius: BorderRadius.circular(18),

                              ),
                              margin: EdgeInsets.all(6),
                              child: Icon(icons[index],size:25,color: Colors.white,),
                              height:45,
                              width: 45,
                            );
                          },
                        ),


                        // GridView.count(crossAxisCount: 4,
                        //   children: List.generate(9, (index){
                        //     return Container(
                        //       margin: EdgeInsets.all(6),
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(18),
                        //         color: Colors.grey
                        //       ),
                        //       child: Icon(icons[index],size:25,color: Colors.white,),
                        //       height:45,
                        //       width: 45,
                        //     );
                        //   }),
                        //
                        // ),
                      )
                    ],
                  ),
                ),
              )),

          ]),
        ));
  }
}
