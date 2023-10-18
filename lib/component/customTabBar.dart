import 'package:flutter/material.dart';
class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35,vertical: 8),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.zero,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2,
                indicator: DotIndicator(
                  tabbarWidth: MediaQuery.of(context).size.width - 2 * 35,
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                tabs: [Tab(text: "همه پست ها"), Tab(text: "همه آلبوم ها")],
              ),
            )
          ],
        ),
      ),
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
              tabbarWidth / 2,
              65 ,
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
