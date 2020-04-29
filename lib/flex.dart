import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      //mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(flex:1, child: Container(height:80,width:50,color:Colors.red)),
        Expanded(flex:0, child: Container(height:50,color:Colors.blue)),
        Container(height:60,width:50,color:Colors.red)
      ]);
  }
}