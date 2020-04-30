import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  const AlignDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Align(
    //         heightFactor: 3,
    //         alignment: Alignment(1,0),
    //         child: Container(
    //             width: 80,
    //             height: 80,
    //             decoration: BoxDecoration(
    //                 color: Colors.red,
    //                 border: Border.all(color: Colors.black))));
    return Container(
        width: 280,
        height: 500,
        color: Colors.lightBlue,
        child: Align(
            heightFactor: 3,
            alignment: Alignment(1.5,0),
            child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black)))));
  }
}
