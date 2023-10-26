import 'package:flutter/material.dart';
import 'package:mahdaviat_project/component/FilterAppBar.dart';
class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FF),
      appBar: filterAppBar(onPressed: (){},),
      body: Card(
        child: InkWell(
          onTap: (){},
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
              ),
              ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
              ),
              ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
              )

            ],
          ),
        ),
      )
    );
  }
}
