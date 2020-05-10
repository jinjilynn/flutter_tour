import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  FormDemo({Key key}) : super(key: key);

  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  GlobalKey _formKey= new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            Opacity(opacity: null),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  //  prefixText:'用户名:',
                  hintText: "请输入合法用户名",
                  prefixStyle: TextStyle(color: Colors.black),
                  errorStyle: TextStyle(color: Colors.green),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow))),
              validator: (v) {
                return v.length <= 7 ? null : '用户名过长';
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  //  prefixText: '密码',
                  labelText: '密码',
                  prefixStyle: TextStyle(color: Colors.black)),
              validator: (v) {
                return 'hha';
              },
            ),
            Builder(builder: (context) {
              return RaisedButton(child: Text('登录', textDirection: TextDirection.ltr,), onPressed: () {
                  //print( Form.of(context).validate());
                  (_formKey.currentState as FormState).validate();
              });
            })
          ])),
    );
  }
}
