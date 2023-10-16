import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class FirstMainScreen extends StatefulWidget {
  const FirstMainScreen({super.key});

  @override
  State<FirstMainScreen> createState() => _FirstMainScreenState();
}

class _FirstMainScreenState extends State<FirstMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       systemOverlayStyle: const SystemUiOverlayStyle(
         statusBarColor: Colors.transparent,
         statusBarIconBrightness: Brightness.dark,
       ),
       leading: Padding(
         padding: const EdgeInsets.only(top:10,left:15),
         child: IconButton(
             onPressed: () {},
             icon: Icon(Icons.search_sharp,color: Colors.grey[400]!,size:45,)
         ),
       ),
       actions: [
       Padding(
             padding: const EdgeInsets.only(top:20,right:15),
         child: Container(
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       border: Border.all(width: 2.0,color: Colors.grey[400]!,)
                   ),
                   child: IconButton(
                       onPressed: () {},
                        icon:Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey[400]!,size: 20,
                        )
                   ),
                 ),
       ),
       ],
       backgroundColor: Colors.transparent,
       title: const Text(''),
     ),
     body: Column(
       children: [
         // Expanded(
         //   flex: 1,
         //   child: Padding(
         //     padding: const EdgeInsets.only(top:70,right:5),
         //     child: Wrap(
         //       children: <Widget>[
         //         Icon(Icons.search_sharp,color: Colors.black.withOpacity(0.5),size:45,),
         //       SizedBox(width:300),
         //         Container(
         //           margin: EdgeInsets.all(3),
         //           padding: EdgeInsets.all(3),
         //           decoration: BoxDecoration(
         //               shape: BoxShape.circle,
         //               border: Border.all(color: Colors.black.withOpacity(0.5))
         //           ),
         //           child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black.withOpacity(0.5)),
         //         ),
         //       ],
         //     ),
         //   ),
         // ),
         Expanded(
           flex: 1,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("متن",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        Icon(Icons.text_snippet_outlined,color: Colors.black.withOpacity(0.7)), // icon
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("عکس",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        Icon(Icons.photo,color: Colors.black.withOpacity(0.7)), // icon
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("صوت",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        Icon(Icons.audio_file_outlined,color: Colors.black.withOpacity(0.7)), // icon
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("ویدیو",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        Icon(Icons.video_collection,color: Colors.black.withOpacity(0.7)), // icon
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("برگزیده",style: TextStyle(color: Colors.black.withOpacity(0.7)),), // tex
                        Icon(Icons.file_copy_outlined,color: Colors.black.withOpacity(0.7)), // icon
                      ],
                    ),
                  ),
                ],
             )
         ),
         Expanded(
             flex:6,
             child: Row())
       ],
     ),

    );
  }
}
