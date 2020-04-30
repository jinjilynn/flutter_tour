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
      alignment: AlignmentDirectional.topCenter,
      textDirection: TextDirection.rtl,
      fit: StackFit.loose,
      overflow:Overflow.visible,
      children: <Widget>[
        Container(height:700,width:414,color:Colors.black),
        Positioned(width:80,child: Container(width:80,height:80,color:Colors.pink),bottom:-30),
        Positioned(child:Container(height:30,width:100,color:Colors.red),top:0),
        Container(height:60,width:60,color:Colors.blue),
      ],
    );
  }
}