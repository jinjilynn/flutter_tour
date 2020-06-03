import 'package:flutter/material.dart';

class DecoratedBoxDemo extends StatelessWidget {
  const DecoratedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.background,
      child: Padding(child:Text('DecoratedBox',style:TextStyle(color:Colors.white)), padding:EdgeInsets.all(20)),
      decoration: BoxDecoration(
        //image:DecorationImage(image: AssetImage('images/chrome.png'),fit:BoxFit.fill)
        gradient: LinearGradient(
          colors: [Colors.orange,Colors.red,Colors.lightBlue],
          begin:Alignment.topLeft,
          end:Alignment.bottomRight,
          stops:[0,0.5,1]
        ),
        //border: Border.all(color:Colors.black),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
        boxShadow:[
          BoxShadow(blurRadius:5,color: Colors.black,offset: Offset(2,2)),
          //BoxShadow(blurRadius:5,color: Colors.red,offset: Offset(2,2))
        ],
       //shape:BoxShape.circle,
       //backgroundBlendMode:BlendMode.lighten
      ),
    );
  }
}