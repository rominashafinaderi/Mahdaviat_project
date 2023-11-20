import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/models/album.dart';
import '../helpers.dart';
import 'AlbumWidget.dart';
import 'FolderShape.dart';
import 'GridVIewWidget.dart';

class AlbumWidget extends StatefulWidget {
  const AlbumWidget({Key? key}) : super(key: key);

  @override
  State<AlbumWidget> createState() => _AlbumWidgetState();
}

class _AlbumWidgetState extends State<AlbumWidget> {
  List<Album> albums = [];

  @override
  void initState() {
    super.initState();
    fetchAlbums();
  }

  void fetchAlbums() async {
    String jsonString = await loadTextAsset(getJsonPath("albumList.json"));
    var json = jsonDecode(jsonString);
    for (final item in json["album"]) {
      albums.add(Album.fromJson(item));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return albums.isEmpty
        ? CircularProgressIndicator()
        : Column(
      children: [
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.only(right: 22, left: 22),
            child: GridViewWidget(
              itemCount: albums.length,
              crossCount: 3,
              mainExtent: 160,
              GridWidget: (int index) {
                return GridItemWidget(
                  index: index,
                  album: albums[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class GridItemWidget extends StatelessWidget {
  final int index;
  final Album album;

  const GridItemWidget({required this.index, required this.album});

  @override
  Widget build(BuildContext context) {
    if (index == 1) {
      return Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: CustomPaint(
                    painter: FolderShapePainter(color: Color(0xFFe9ebfa)),
                  ),
                ),
                Positioned(
                  left: 28,
                  bottom: 28,
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: Color(0xFF00e0be),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.white,
                      size: 11,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              album.title ?? '',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    } else if (index == 2) {
      return Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 100,
              width: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: CustomPaint(
                painter: FolderShapePainter(color: Color(0xFF82ebe4)),
              ),
            ),
            SizedBox(height: 5),
            Text(
              album.title ?? '',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    }  else {
      return Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 100,
              width: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: CustomPaint(
                painter: FolderShapePainter(color: Color(0xFFe9ebfa)),
              ),
            ),
            SizedBox(height: 5),
            Text(
              album.title ?? '',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    }
  }
}