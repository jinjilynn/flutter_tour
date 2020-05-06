import 'package:flutter/material.dart';

class DecoratedBoxDemo extends StatelessWidget {
  const DecoratedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        //image:DecorationImage(image: AssetImage('images/chrome.png'),fit:BoxFit.fill)
        gradient: LinearGradient(
          colors: [Colors.pink,Colors.lightBlue],
          begin:Alignment.topLeft,
          end:Alignment.bottomRight,
          stops:[0,1]
        ),
        border: Border.all(color:Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow:[
          BoxShadow(blurRadius:5,color: Colors.black,offset: Offset(2,2)),
          BoxShadow(blurRadius:5,color: Colors.red,offset: Offset(2,2))
        ],
        //shape:BoxShape.circle
        backgroundBlendMode:BlendMode.plus
      ),
      child: Padding(child:Text('DecoratedBox',style:TextStyle(color:Colors.white)), padding:EdgeInsets.all(20)),
    );
  }
}