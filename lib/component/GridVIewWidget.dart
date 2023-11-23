import 'package:flutter/material.dart';
class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key, required this.crossCount, required this.itemCount, required this.GridWidget, required this.mainExtent});
 final int crossCount;
 final int itemCount;
  final double mainExtent;
  final Widget Function(int index) GridWidget;

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:crossCount, mainAxisExtent: mainExtent // <-- *****
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return GridWidget( index);
  }
    );
}
}
