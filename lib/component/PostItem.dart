import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../models/post.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
    _enabled = true;
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: widget.post.image ?? '',
      fit: BoxFit.cover,
      placeholder: (context, url) => Skeletonizer(
        enabled: _enabled,
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width / 2,
        ),
      ),
      errorWidget: (context, url, error) {
        setState(() {
          _enabled = false;
        });
        return Center(
          child: Text(
            'No internet connection!',
            style: TextStyle(color: Colors.redAccent),
          ),
        );
      },
      imageBuilder: (context, imageProvider) {
        setState(() {
          _enabled = false;
        });
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                child: Positioned(
                  left: 18,
                  bottom: 18,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: colors[widget.post.type],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      icons[widget.post.type],
                      color: Colors.white.withOpacity(0.5),
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
