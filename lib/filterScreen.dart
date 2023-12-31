import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'component/AppBarWidgets/AppBarActionWidgets.dart';
import 'component/AppBarWidgets/AppBarLeadigWidgets.dart';
import 'component/AppBarWidgets/AppBarTitle.dart';
import 'component/customeAppBar.dart';

class FilterScreen extends StatefulWidget {
   FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<bool> isCheckedList = [false, false];
  List<String> title = [
    'انتخاب دسته بندی',
    'انتخاب سخنران',
    'انتخاب کیفیت ویدیو'
  ];

   List<String> title2 = [
     'فقط پست تصویری',
     'فقط با ذکر منبع',
   ];

  void disableCheckboxes() {
    setState(() {
      isCheckedList = List<bool>.generate(isCheckedList.length, (_) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FF),
      appBar:CustomAppBar(
        color:Color(0xFFF5F8FF),
        Titletext: AppBarTitle(text: 'فیلتر مطالب', textSize: 18, centered:false,),
        LeadingWidget: ArrowBackWidget(onPressed: (){}, iconColor:  Colors.grey[400]!,),
        ActiongWidget:  AppBarActionListWidgets(customWidgets: [
          Trash_TextWidget(onPressed: disableCheckboxes),

        ],),

      ),
      body: Column(
        children: [
          SizedBox(height:35),
          Expanded(
            flex:3,
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
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
                                  fontSize: 12
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
        Expanded(
          flex: 3,
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
                  onTap: () {
                    setState(() {
                      isCheckedList[index] = !isCheckedList[index];
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.list,
                              color: Color(0xFF0ad9b8),
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              title2[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              isCheckedList[index] ? 'فعال است' : 'غیر فعال',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            Checkbox(
                              value: isCheckedList[index],
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedList[index] = value!;
                                });
                              },
                              fillColor: MaterialStateProperty.resolveWith(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Color(0xFF0ad9b8);
                                  }
                                  return Color(0xFFeef0fc);
                                },
                              ),
                              checkColor: Colors.white,
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
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
             flex: 1,
          child: Stack(
            children:[
              Positioned(
                bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(23)
                    ),
                    width: 410,
                    height:80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width:35),
                        Text('563 نتیجه',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            color:Color(0xFF0ad9b8)
                          ),),
                        Spacer(),
                        Icon(FontAwesomeIcons.fileLines,size:19, color:Color(0xFF0ad9b8)),
                        Text('اعمال فیلتر ها',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                          ),),
                        SizedBox(width:35),

                      ],
                    ),
                  )
              ),
            ]
          ),
          )
        ],
      ),
    );
  }
}
