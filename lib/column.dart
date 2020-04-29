import 'package:flutter/widgets.dart';

class ColumnDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      //textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.up,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      Text('这个是column里的文本'),
      Text('这个是column里的文本'),
      Row(children: <Widget>[Text('这个是row里的文本')])
    ]
    );
  }
}
