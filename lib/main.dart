import 'package:flutter/material.dart';
// import 'package:flutter_demo/constrainedBox.dart';
import 'package:flutter_demo/decoratedbox.dart';
// import 'package:flutter_demo/padding.dart';
//import 'package:flutter_demo/align.dart';
// import 'package:flutter_demo/stack.dart';
// import 'package:flutter_demo/column.dart';
// import 'package:flutter_demo/flex.dart';
// import 'package:flutter_demo/wrap.dart';
// import 'package:flutter_demo/row.dart';
// import 'package:flutter_demo/form.dart';
// import 'package:flutter_demo/radiobutton.dart';
// import 'package:flutter_demo/button.dart';
// import 'package:flutter_demo/checkbox.dart';
// import 'package:flutter_demo/radio.dart';
// import 'package:flutter_demo/text.dart';
// import 'package:flutter_demo/imageicon.dart';
// import 'package:flutter_demo/textfile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          Scaffold(appBar: AppBar(title: Text('Learning')), body: DecoratedBoxDemo()),
      // theme: ThemeData(primarySwatch: Colors.lightBlue)
    );
  }
}
