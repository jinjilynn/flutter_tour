import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"*3;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics() ,
      child:Align(alignment:Alignment.topRight,child:Column(
        children: str.split('').map((e) => Text(e)).toList()
      ))
    );
  }
}