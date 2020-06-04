import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder:(context,index) => Text('$index'),
      itemCount:90,
      separatorBuilder: (context,index) => Divider(color:Colors.red),
    );
  }
}