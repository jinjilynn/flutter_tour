import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //color:Colors.red,
        child: Column(children: <Widget>[
      RaisedButton(
          child: Text('Raise'), color: Colors.lightBlue, onPressed: () => {}),
      FlatButton(
        onPressed: () => {},
        child: Text('Flat'),
        //color: Colors.blue,
        colorBrightness: Brightness.dark,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      //MaterialButton
      MaterialButton(
        child: Text("outline"),
        color: Colors.orange,
        onPressed: () {},
        padding: EdgeInsets.all(0),
        height:90,
        minWidth:9000,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      IconButton(
          icon: Icon(Icons.check_box),
          color: Colors.yellow,
          onPressed: () => {}),
      RaisedButton.icon(
          onPressed: () {}, icon: Icon(Icons.score), label: Text('iconbutton')
      ),
      Image(
        image: AssetImage('images/chrome.png'),
        width: 60.0,
        color: Colors.red,
        colorBlendMode: BlendMode.colorBurn,
        repeat: ImageRepeat.repeatX,
      ),
      Text('\uE914',
          style: TextStyle(
              fontFamily: 'MaterialIcons',
              color: Colors.black,
              fontSize: 15.0)),
      Text(
        '\ue695',
        style: TextStyle(
            fontFamily: 'gefont', fontSize: 30, color: Colors.lightGreen),
      ),
      Icon(IconData(0xeb81, fontFamily: 'gefont'),
          color: Colors.blue, size: 20),
      //   FlatButton(
      //   onPressed: () => {},
      //   child: Text('Flat'),
      //   color: Colors.blue,
      //   colorBrightness: Brightness.dark,
      // ),
    ])
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
