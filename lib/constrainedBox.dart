import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return blueBox;
    // return ConstrainedBox(
    //     constraints: BoxConstraints(minWidth: double.infinity, minHeight: 10),
    //     child: ConstrainedBox(constraints: BoxConstraints(maxWidth:300,maxHeight:20),child:pinkBox));
    // }
}}

Widget greedBox = DecoratedBox(
  child:ConstrainedBox(constraints: BoxConstraints(maxWidth:300,maxHeight:200),child:pinkBox),
  decoration: BoxDecoration(color: Colors.lightGreen)
);
Widget pinkBox = DecoratedBox(decoration: BoxDecoration(color: Colors.green));


Widget blueBox = UnconstrainedBox(
    //constrainedAxis: Axis.horizontal,
    alignment: Alignment.topRight,
    child: DecoratedBox(
        child: Text('data'),
        decoration: BoxDecoration(color: Colors.lightBlue))
);
