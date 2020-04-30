import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment:WrapAlignment.spaceAround,
        runAlignment: WrapAlignment.center,
        //runSpacing:20.0,
        children: <Widget>[
          Container(height:30,width:930,color:Colors.red),
          Container(height:40,width:320,color:Colors.grey),
          Container(height:50,width:450,color:Colors.green),
          Container(height:60,width:220,color:Colors.black),
          Container(height:70,width:70,color:Colors.blue),
          Container(height:80,width:20,color:Colors.orange),
          Container(height:90,width:260,color:Colors.pink),
          Container(height:50,width:100,color:Colors.purple),
          Container(height:70,width:20,color:Colors.purpleAccent),
          Container(height:30,width:260,color:Colors.teal),
          Container(height:60,width:20,color:Colors.indigo),
          Container(height:20,width:40,color:Colors.yellow),
          Container(height:30,width:220,color:Colors.red),
          Container(height:40,width:20,color:Colors.grey),
          Container(height:50,width:50,color:Colors.green),
          Container(height:60,width:220,color:Colors.black),
          Container(height:70,width:300,color:Colors.blue),
          Container(height:80,width:20,color:Colors.orange),
          Container(height:90,width:260,color:Colors.pink),
          Container(height:50,width:10,color:Colors.purple),
          Container(height:70,width:300,color:Colors.purpleAccent),
          Container(height:30,width:260,color:Colors.teal),
          Container(height:60,width:20,color:Colors.indigo),
          Container(height:20,width:400,color:Colors.yellow),
          Container(height:70,width:300,color:Colors.purpleAccent),
          Container(height:30,width:260,color:Colors.teal),
          Container(height:60,width:20,color:Colors.indigo),
          Container(height:20,width:400,color:Colors.yellow),
          Container(height:70,width:300,color:Colors.purpleAccent),
          Container(height:30,width:260,color:Colors.teal),
          Container(height:60,width:20,color:Colors.indigo),
          Container(height:20,width:400,color:Colors.yellow),
        ],
      );
  }
}