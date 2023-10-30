import 'package:flutter/material.dart';
import 'package:mahdaviat_project/component/FilterAppBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/checkBox.dart';
import 'package:mahdaviat_project/filterScreen.dart';

class FilterScreen extends StatefulWidget {
   FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> title = [
    'انتخاب دسته بندی',
    'انتخاب سخنران',
    'انتخاب کیفیت ویدیو'
  ];

   List<String> title2 = [
     'فقط پست تصویری',
     'فقط با ذکر منبع',
   ];
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FF),
      appBar: filterAppBar(onPressed: (){},),
      body: Column(
        children: [
          SizedBox(height:35),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: ListView.builder(

                itemCount: 3,
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
                      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 15),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.folder,size: 20, color: Color(0xFF0ad9b8)),
                              SizedBox(width: 10),
                              Text(
                                title[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                           Row(
                              children: [
                                Text(
                                  '16 گروه دسته بندی',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(width: 25),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.grey[400],
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
          SizedBox(height:55),
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
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.list,
                                  color:Color(0xFF0ad9b8),
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(title2[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13
                                ),),
                            ],
                          ),
                         Spacer(),
                          Row(
                            children: [
                              CheckboxExample(),
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
