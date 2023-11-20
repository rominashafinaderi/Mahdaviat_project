import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../models/post.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    super.key,
    required this.post,
    required this.padding,
  });

  final Post post;
  final EdgeInsets padding;

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool _enabled = true;
  Map<String, IconData> icons = {"video": FontAwesomeIcons.youtube, "photo": FontAwesomeIcons.image, "sound": FontAwesomeIcons.volumeLow, "text": FontAwesomeIcons.fileLines};
  Map<String, Color> colors = {
    "video": Colors.blueAccent,
    "photo": Colors.greenAccent,
    "sound": Colors.orange,
    "text": Colors.purple,
  };

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _enabled = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: _enabled,
      child: Container(
        padding: widget.padding,
        width: MediaQuery.of(context).size.width / 2,
        height: (MediaQuery.of(context).size.width / 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                      widget.post.image ?? '',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(child: Text('no internet connection!',style: TextStyle(color: Colors.redAccent),),);
                      },

                  ),

                ),
              ),
              Container(
                  child: Positioned(
                      left: 18,
                      bottom: 18,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color:colors[widget.post.type],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          icons[widget.post.type],
                          color: Colors.white.withOpacity(0.5),
                          size: 24,
                        ),
                      )))
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Text(
                "${widget.post.typeFa} / ${widget.post.title}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}