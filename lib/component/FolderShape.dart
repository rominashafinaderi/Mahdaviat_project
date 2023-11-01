import 'package:flutter/material.dart';

class FolderShapePainter extends CustomPainter {
  final Color color;

  FolderShapePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    const a = 0.10;
    const b = 0.25;
    const c = 0.6;
    RRect folderShape = RRect.fromLTRBR(
      size.width * (1 - 0.2),
      0,
      size.width,
      size.width,
      Radius.circular(20),
    );

    canvas.drawRRect(folderShape, paint);
    Path path = Path()
      ..moveTo(size.width * (1 - a), 0)
      ..lineTo(size.width, size.height * a)..lineTo(size.width, size.height)..lineTo(0, size.height)..lineTo(0, size.height * b)..lineTo(size.width * (1 - 0.7), size.height * b)..lineTo(size.width * (1 - b), 0)
      ..close();

    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}