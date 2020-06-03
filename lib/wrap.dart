import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Wrap(
        direction:Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment:WrapAlignment.spaceAround,
        runAlignment: WrapAlignment.end,
        runSpacing:50.0,
        children: <Widget>[
          Container(height:30,width:30,color:Colors.red),
          Container(height:40,width:32,color:Colors.grey),
          Container(height:50,width:35,color:Colors.green),
          Container(height:60,width:22,color:Colors.black),
          Container(height:70,width:70,color:Colors.blue),
          Container(height:80,width:20,color:Colors.orange),
          Container(height:90,width:26,color:Colors.pink),
          Container(height:50,width:10,color:Colors.purple),
          Container(height:70,width:20,color:Colors.purpleAccent),
          Container(height:30,width:26,color:Colors.teal),
          Container(height:60,width:20,color:Colors.indigo),
          Container(height:20,width:40,color:Colors.yellow),
          Container(height:30,width:22,color:Colors.red),
          Container(height:40,width:20,color:Colors.grey),
          Container(height:50,width:50,color:Colors.green),
          Container(height:60,width:22,color:Colors.black),
          Container(height:70,width:30,color:Colors.blue),
          Container(height:80,width:20,color:Colors.orange),
          Container(height:90,width:26,color:Colors.pink),
          Container(height:50,width:10,color:Colors.purple),
          Container(height:70,width:30,color:Colors.purpleAccent),
          Container(height:30,width:26,color:Colors.teal),
          Container(height:60,width:20,color:Colors.indigo),
          Container(height:20,width:40,color:Colors.yellow),
          Container(height:70,width:30,color:Colors.purpleAccent),
          Container(height:30,width:60,color:Colors.teal),
          Container(height:60,width:20,color:Colors.indigo),
          Container(height:20,width:40,color:Colors.yellow),
          Container(height:70,width:30,color:Colors.purpleAccent),
          Container(height:30,width:26,color:Colors.teal),
          Container(height:60,width:20,color:Colors.indigo),
          Container(height:20,width:40,color:Colors.yellow),
        ],
      );
  }
}