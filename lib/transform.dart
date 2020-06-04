import 'package:flutter/material.dart';

// import 'package:vector_math/vector_math.dart' show Vector3;
class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 100,
            width: 150,
            color: Colors.blue,
            child: Transform(
              alignment: Alignment.topLeft,
              origin: Offset(0, 0),
              transform: Matrix4.rotationZ(90 * 3.1415927 / 180),
              child:Container(
                      height: 40,
                      width: 60,
                      color: Colors.red,
                      child: Text('hello'))
            )));
  }
}
