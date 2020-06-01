import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
            'this is a car' * 2000,
             //textAlign: TextAlign.right,
             textScaleFactor: 1,
             //softWrap:false,
            // maxLines: 1,
             overflow: TextOverflow.visible,
             style:TextStyle(
              //color: Colors.blue,
              fontSize: 18.0,
              height: 2,  
              fontFamily: "Courier",
             // background: Paint()..color=Colors.yellow,
              foreground:Paint()..color=Color.fromRGBO(10, 10, 10,0.9),
              decoration:TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed
             )
      );
    return Container(
      // child: Text(
      //       'this is a text' * 2,
      //        textAlign: TextAlign.right,
      //        textScaleFactor: 2,
      //        maxLines: 3,
      //        overflow: TextOverflow.ellipsis,
      //        style:TextStyle(
      //          color: Colors.blue,
      //         fontSize: 18.0,
      //         height: 1.2,  
      //         fontFamily: "Courier",
      //         background: new Paint()..color=Colors.yellow,
      //         decoration:TextDecoration.underline,
      //         decorationStyle: TextDecorationStyle.dashed
      //        )
      // ),
      // child: Text.rich(TextSpan(children: [
      //   TextSpan(
      //     text: 'ip:',
      //     style: TextStyle(color: Colors.red)
      //   ),
      //   TextSpan(
      //     text: '127.0.0.1',
      //     style: TextStyle(
      //       color: Colors.blue
      //     )
      //   )
      // ]),
      // textAlign: TextAlign.right,
      // )
      // child: DefaultTextStyle(
      //     //1.设置文本默认样式  
      //     style: TextStyle(
      //       color:Colors.red,
      //       fontSize: 20.0,
      //     ),
      //     textAlign: TextAlign.start,
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         Text("hello world"),
      //         Text("I am Jack"),
      //         Text("I am Jack",
      //           style: TextStyle(
      //             inherit: false, //2.不继承默认样式
      //             color: Colors.grey
      //           ),
      //         ),
      //       ],
      //     ),
      //   )
       width:9000,
       height:300,
      // child:Text(
      //   '李奇峯', 
      //   textAlign: TextAlign.center, 
      //   textDirection: TextDirection.ltr,
      //   style:TextStyle(color:Colors.black,fontSize:80)
      // )
    );
  }
}