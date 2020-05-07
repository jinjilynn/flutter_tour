import 'package:flutter/material.dart';
// import 'package:vector_math/vector_math.dart' show Vector3;
class TransformDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child:Transform(
      alignment: Alignment.topLeft,
      origin: Offset(0, 40),
      transform: Matrix4.skew(0, .5),
      child: Container(height:40,width:60,color:Colors.red,child:Text('hello')),
    ));
  }
}