import 'package:flutter/material.dart';

class ClipDemo extends StatelessWidget {
  final Widget img = Image.network('https://www.somagnews.com/wp-content/uploads/2019/11/d4-8-e1574457212471.jpg',width:300,height:180,fit:BoxFit.fill);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        img,
        ClipOval(child:img),
        ClipRRect(child:img, borderRadius: BorderRadius.circular(20),),
        Container(child:ClipRect(child:UnconstrainedBox(child: img),),width:400,height:200)
      ],),
    );
  }
}