import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:<Widget>[
          RaisedButton(
        child:Text('Raise'),
        color:Colors.lightBlue,
        onPressed: ()=>{}
      ),
      FlatButton(
        onPressed: () => {}, 
        child: Text('Flat'),
        color: Colors.blue,
        colorBrightness: Brightness.dark,
      ),
      OutlineButton(
        child: Text("outline"),
        onPressed: () {},
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      IconButton(icon: Icon(Icons.check_box),color:Colors.red, onPressed: ()=>{}),
      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.score), label: Text('iconbutton')),
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
      //   FlatButton(
      //   onPressed: () => {}, 
      //   child: Text('Flat'),
      //   color: Colors.blue,
      //   colorBrightness: Brightness.dark,
      // ),
        ]
      )
      // child: RaisedButton(
      //   child:Text('Raised'),
      //   color:Colors.lightBlue,
      //   onPressed: ()=>{}
      // ),
      // child: FlatButton(
      //   onPressed: () => {}, 
      //   child: Text('Flat'),
      //   color: Colors.blue
      // )
      // child:OutlineButton(
      //   child: Text("outline"),
      //   onPressed: () {},
      // )
      // child: IconButton(icon: Icon(Icons.save), onPressed: ()=>{})
    );
  }
}