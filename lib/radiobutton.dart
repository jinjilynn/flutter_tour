import 'package:flutter/material.dart';

class RadioButtonDemo extends StatefulWidget {
  RadioButtonDemo({Key key}) : super(key: key);

  @override
  _RadioButtonDemoState createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {
  String _value;
  String _f;
  void setRadio(v) {
    setState(() {
      this._value = v;
    });
  }

  void setfRadio(v) {
    setState(() {
      this._f = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Radio(
          value: '苹果',
          groupValue: _value,
          onChanged: (v) {
            setRadio(v);
          }),
      Radio(
          value: '鸭梨',
          groupValue: _value,
          onChanged: (v) {
            setRadio(v);
          }),
      Radio(
          value: '香蕉',
          groupValue: _value,
          onChanged: (v) {
            setRadio(v);
          }),
      RadioListTile(
          value: 'Flutter',
          groupValue: _f,
          onChanged: (v) {
            setfRadio(v);
          },
          title: Text('Flutter'),
          secondary: Icon(Icons.people))
    ]));
  }
}
