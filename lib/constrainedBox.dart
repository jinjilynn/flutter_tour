import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 500),
        child: greedBox);
  }
}

Widget greedBox = DecoratedBox(
    child: blueBox, decoration: BoxDecoration(color: Colors.lightGreen));
// Widget blueBox = UnconstrainedBox(
//   child: DecoratedBox(
//   decoration: BoxDecoration(color: Colors.lightBlue)
//   )
// );

Widget blueBox = UnconstrainedBox(
    //constrainedAxis: Axis.horizontal,
    alignment: Alignment.topCenter,
    child: DecoratedBox(
        child: Text('data'),
        decoration: BoxDecoration(color: Colors.lightBlue))
);
