import 'package:flutter/material.dart';

class CheckBoxDemos extends StatefulWidget {
  CheckBoxDemos({Key key}) : super(key: key);

  @override
  _CState createState() => _CState();
}

class _CState extends State<CheckBoxDemos> {
  String t = '未选中';
  dynamic _c;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
            value: _c,
            tristate: true,
            onChanged: (v) {
              setState(() {
                //this.t = v ? '选中' : '未选中';
                print(v);
                this._c = v;
              });
            }),
        Text('$t')
      ],
    );
  }
}
