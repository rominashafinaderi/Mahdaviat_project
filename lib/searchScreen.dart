import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/searchAppBar.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FF),
      appBar: SearchAppBar(onPressed: () {}, onPressed0: () {}),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
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
          SizedBox(height:30),
          Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.only(left: 30, right:30),
              child:ListView(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            width: 165,
                            height: 50 ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 10,),
                                Icon(FontAwesomeIcons.folder,size:15, color: Color(0xFF0ad9b8)),
                                SizedBox(width:19),
                              Text('انتخاب دسته بندی',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10
                                  ),),
                                SizedBox(width: 15,),
                                Icon(FontAwesomeIcons.chevronDown,size:12, color: Colors.grey[400]),
                                SizedBox(width: 15,),

                              ],
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          InkWell(
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          splashColor: Colors.red,
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 165,
                              height: 50,
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
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            width: 165,
                            height: 50 ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 10,),
                                Icon(FontAwesomeIcons.folder,size:15, color: Color(0xFF0ad9b8)),
                                SizedBox(width:25),
                            Text('انتخاب سخنران',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10
                                  ),),
                                SizedBox(width: 15,),
                                Icon(FontAwesomeIcons.chevronDown,size:12, color: Colors.grey[400]),
                                SizedBox(width: 15,),

                              ],
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            width: 165,
                            height: 50 ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 10,),
                                Icon(FontAwesomeIcons.folder,size:15, color: Color(0xFF0ad9b8)),
                                SizedBox(width:25),
                                Text('فرمت و کیفیت',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                ),),
                                SizedBox(width: 15,),
                                Icon(FontAwesomeIcons.chevronDown,size:12, color: Colors.grey[400]),
                                SizedBox(width: 15,),

                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )

              ),
            ),
          SizedBox(height:80),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.fileLines,size: 20, color: Color(0xFF0ad9b8)),
                    SizedBox(width: 10,),
                    Text('نتایج جستجو',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Spacer(),
                Text('563نتیجه',
                  style: TextStyle(
                    color: Color(0xFF0ad9b8),
                      fontSize:12,
                      fontWeight: FontWeight.bold
                  ),)
              ],
            ),
          ),
          SizedBox(height: 30,),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: ListView.builder(
                itemCount:2,
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
                    highlightColor:Color(0xFFeef0fc),
                    splashColor:Color(0xFFeef0fc),
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical:40, horizontal: 15),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text('مسابقه رضوان ویژه هفته وحدت',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13
                                    ),
                                  ),
                                  Row(
                                    children: [
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),


                        ],
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
