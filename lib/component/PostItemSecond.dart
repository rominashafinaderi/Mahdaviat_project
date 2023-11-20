import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/post.dart';

class PostItem_2 extends StatefulWidget {
  const PostItem_2({
    super.key,
    required this.padding, required this.post2,
  });
  final EdgeInsets padding;
  final Post post2;


  @override
  State<PostItem_2> createState() => _PostItem_2State();
}

class _PostItem_2State extends State<PostItem_2> {
  Map<String, IconData> icons = {"video": FontAwesomeIcons.volumeLow, "photo": FontAwesomeIcons.volumeLow, "sound": FontAwesomeIcons.volumeLow, "text":FontAwesomeIcons.volumeLow};
  Map<String, Color> colors = {
    "video": Colors.pink,
    "photo": Colors.orange,
    "sound": Colors.orange,
    "text": Colors.orange,
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:widget.padding,
      width: MediaQuery
          .sizeOf(context)
          .width / 2,
      height: (MediaQuery
          .sizeOf(context)
          .width / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.network(
                  widget.post2.image ?? '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                child: Positioned(
                    left: 12,
                    bottom: 11,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: colors[widget.post2.type],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        icons[widget.post2.type],
                        color: Colors.white.withOpacity(0.5),
                        size: 12,
                      ),
                    )))
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "${widget.post2.typeFa} / ${widget.post2.title}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
