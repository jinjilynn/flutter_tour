import 'package:flutter/material.dart';

class RowDemo extends StatefulWidget{

 @override
 _RowDemoState createState() => _RowDemoState(); 
}

class _RowDemoState extends State<RowDemo>{
  @override
  Widget build(BuildContext context){
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
          // Text('这个是row里的文本',style: TextStyle(fontSize:30)),
          // Text('这个是row里的文本'),
          // Text('这个是row里的文本'),
          Text('这个是row里的文本'),
          Column(children: <Widget>[Text('这个是column里的文本')]),
          Expanded(flex:0, child: Container(height:40,width:90,color:Colors.yellow))
        ]);
      
  }
}
