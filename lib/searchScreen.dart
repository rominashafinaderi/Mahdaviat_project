import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/AppBarWidgets/AppBarActionWidgets.dart';
import 'component/AppBarWidgets/AppBarLeadigWidgets.dart';
import 'component/AppBarWidgets/AppBarTitle.dart';
import 'component/customeAppBar.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FF),
      appBar:CustomAppBar(
        color:Color(0xFFF5F8FF),
        Titletext: AppBarTitle(text: 'جستجوی پیشرفته', textSize: 18, centered:true,),
        LeadingWidget: ArrowBackWidget(onPressed: (){}, iconColor:  Colors.grey[400]!,),
        ActiongWidget:  AppBarActionListWidgets(customWidgets: [
          GearWidget(iconColor: Colors.white,),
          SearchWidget(iconColor: Colors.white),
        ],),

      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r'\s')),
              ],
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.all(25),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: Color(0xFF0ad9b8),
                    ),
                  )),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 167,
                          height:55,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.white,
                            child: InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              highlightColor: Color(0xFFeef0fc),
                              splashColor: Color(0xFFeef0fc),
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(FontAwesomeIcons.folder, size: 15, color: Color(0xFF0ad9b8)),
                                  SizedBox(width: 10),
                                  Text(
                                    'انتخاب دسته بندی',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(FontAwesomeIcons.chevronDown, size: 12, color: Colors.grey[400]),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 167,
                          height: 55,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.white,
                            child: InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              highlightColor: Color(0xFFeef0fc),
                              splashColor: Color(0xFFeef0fc),
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    FontAwesomeIcons.folder,
                                    size: 15,
                                    color: Color(0xFF0ad9b8),
                                  ),
                                  SizedBox(width: 25),
                                  Text(
                                    'تاریخ انتشار',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    FontAwesomeIcons.chevronDown,
                                    size: 12,
                                    color: Colors.grey[400],
                                  ),
                                  SizedBox(width: 15),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 167,
                          height: 55,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.white,
                            child: InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              highlightColor: Color(0xFFeef0fc),
                              splashColor: Color(0xFFeef0fc),
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(FontAwesomeIcons.folder, size: 15, color: Color(0xFF0ad9b8)),
                                  SizedBox(width: 25),
                                  Text(
                                    'انتخاب سخنران',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(FontAwesomeIcons.chevronDown, size: 12, color: Colors.grey[400]),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 167,
                          height: 55,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.white,
                            child: InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              highlightColor: Color(0xFFeef0fc),
                              splashColor: Color(0xFFeef0fc),
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(FontAwesomeIcons.folder, size: 15, color: Color(0xFF0ad9b8)),
                                  SizedBox(width: 25),
                                  Text(
                                    'فرمت و کیفیت',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(FontAwesomeIcons.chevronDown, size: 12, color: Colors.grey[400]),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.fileLines, size: 20, color: Color(0xFF0ad9b8)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'نتایج جستجو',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  '563نتیجه',
                  style: TextStyle(color: Color(0xFF0ad9b8), fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => Card(
                  elevation: 0,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    highlightColor: Color(0xFFeef0fc),
                    splashColor: Color(0xFFeef0fc),
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical:22, horizontal: 15),
                      child:
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'مسابقه رضوان ویژه هفته وحدت',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(FontAwesomeIcons.clock,size: 13,color: Color(0xFF0ad9b8) ),
                                            SizedBox(width:5),
                                            Text('زمان مسابقات 2 دقیقه',
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,color: Colors.grey[400]),)
                                          ],
                                        ),
                                        SizedBox(width:14),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  width: 2.0,
                                                  color: Color(0xFF0ad9b8),
                                                ),
                                              ),
                                              child:
                                              Icon(FontAwesomeIcons.question,size:10,color: Color(0xFF0ad9b8) ),
                                              padding: EdgeInsets.zero,
                                              // constraints: BoxConstraints(),
                                            ),
                                            SizedBox(width:5),
                                            Text('تعداد سوالات 15',
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,color: Colors.grey[400]),)                                        ],
                                        ),
                                        SizedBox(width: 24),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  width: 2.0,
                                                  color: Colors.grey[400]!,
                                                ),
                                              ),
                                              child:
                                                 Icon(
                                                  Icons.arrow_forward_ios_outlined,
                                                  color: Colors.grey,
                                                  size: 10,
                                                ),
                                                padding: EdgeInsets.zero,
                                                // constraints: BoxConstraints(),
                                            ),
                                            SizedBox(width:5),
                                            Text('جزئیات',
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,color: Colors.grey[400]),)                                        ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
