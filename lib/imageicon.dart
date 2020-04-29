import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageIcons extends StatelessWidget {
  const ImageIcons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:<Widget>[
      Image(
        image: NetworkImage('https://pcdn.flutterchina.club/imgs/3-17.png'),
        width:60.0,
        color: Colors.red,
        colorBlendMode:BlendMode.colorBurn,
        repeat: ImageRepeat.repeatX,
      ),
      Text(
        '\uE914',
        style:TextStyle(
          fontFamily:'MaterialIcons',
          color: Colors.black,
          fontSize: 15.0
        )
      ),
      Text(
        '\ue695',
        style:TextStyle(
          fontFamily:'gefont',
          fontSize:30,
          color:Colors.lightGreen
        ),
      ),
        Icon(IconData(
          0xeb81,
          fontFamily: 'gefont'
        ),
        color:Colors.blue,
        size:20
        ),
        ]
      )
    );
  }
}