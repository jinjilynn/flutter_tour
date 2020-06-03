import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  StackDemo({Key key}) : super(key: key);

  @override
  _StackDemoState createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: AlignmentDirectional.topStart,
      textDirection: TextDirection.rtl,
      fit: StackFit.loose,
      overflow:Overflow.visible,
      children: <Widget>[
        Container(height:700,width:414,color:Colors.black),
        Container(height:60,width:60,color:Colors.blue),
        Positioned(width:200,top:0,left:0,child:Container(height:30,width:100,color:Colors.red)),
        Positioned(width:80,child: Container(color:Colors.pink),top:60,bottom:30),
      ],
    );
  }
}