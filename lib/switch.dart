import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  String t = '关';
  bool _c = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Switch(
          value: _c, 
          onChanged: (v){
            setState(() {
              this._c = v;
              this.t = v ? '开' : '关';
            });
          }
        ),
        Text('$t'),
      ],
    );
  }
}
