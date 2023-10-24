import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mahdaviat_project/component/TextButtonHeader.dart';

class CustomButtonTabBar extends StatelessWidget {
  const CustomButtonTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 5,
        child: Column(
          children: <Widget>[
        Container(
        margin: EdgeInsets.zero,
          height: 45,
          child: TabBar(
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2,
            indicator: DotIndicator(
              tabbarWidth: MediaQuery.of(context).size.width - 2 * 35,
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            tabs: [Tab(child:
                       TextButtonHeader(
                         iconData: FontAwesomeIcons.folderMinus,
                          text: "برگزیده",
                           onPressed: () {},
                      ),
                   ),
                  Tab(child: TextButtonHeader(
                        iconData: FontAwesomeIcons.youtube,
                        text: "ویدیو",
                        onPressed: () {},
                            ),),
                    Tab(child: TextButtonHeader(
                          iconData: FontAwesomeIcons.volumeLow,
                          text: "صوت",
                          onPressed: () {},
                        ),),
                    Tab(child:TextButtonHeader(
                        iconData: FontAwesomeIcons.image,
                          text: "عکس",
                          onPressed: () {},
                        ),),
                    Tab(child: TextButtonHeader(
                          iconData: FontAwesomeIcons.fileLines,
                          text: "متن",
                          onPressed: () {},
                          ),)
    ],
    ),
    )
    ],
    )
    );
  }
}

class DotIndicator extends Decoration {
  DotIndicator({
    this.color = const  Color(0xFF77CF00),
    this.radius = 4.0,
    required this.tabbarWidth,
  });

  final Color color;
  final double radius;
  double tabbarWidth;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter(
      color: color,
      radius: radius,
      tabbarWidth: tabbarWidth,
      onChange: onChanged,
    );
  }
}

class _DotPainter extends BoxPainter {
  _DotPainter({
    required this.color,
    required this.radius,
    required this.tabbarWidth,
    VoidCallback? onChange,
  })  : _paint = Paint()
    ..color = const Color(0xFF77CFA6)
    ..style = PaintingStyle.fill,
        super(onChange);
  final Paint _paint;
  final Color color;
  final double radius;
  double tabbarWidth;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    var paint1 = Paint()
      ..color = Color(0xFFEFF1FE)
      ..style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(
              offset.dx,
              offset.dy,
              tabbarWidth /5,
              45,
            ),
            Radius.circular(12.0)),
        paint1);

    final Rect rect = offset & configuration.size!;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(
              rect.bottomCenter.dx - 6,
              rect.bottomCenter.dy - 5,
              19,
              2,
            ),
            Radius.circular(12.0)),
        _paint);
  }
}

