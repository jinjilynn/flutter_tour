import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
    FocusNode _fnode2 = FocusNode();
  FocusNode _fnode1 = FocusNode();

  //FocusNode _fnode2 = FocusNode();
  String _t = 'undone';
  Color _bc = Colors.yellow;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = '这是一个默认文本';
    _controller.selection = TextSelection(baseOffset: 0, extentOffset: 2);
    _fnode1.addListener(() {
      if (_fnode1.hasFocus) {
        setState(() {
          _bc = Colors.red;
        });
      } else {
        _bc = Colors.yellow;
      }
      _controller.addListener(() {
        setState(() {
          this._t = _controller.text;
        });
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _fnode1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('$_t'),
          TextField(
              keyboardType:TextInputType.multiline,
              controller: _controller,
              focusNode: _fnode1,
              autofocus: false,
              //obscureText:true,
              textInputAction: TextInputAction.search,
              textAlign: TextAlign.left,
              maxLines: null,
              // maxLength: 150,
              // maxLengthEnforced: true,
              cursorWidth: 3.0,
              cursorColor: Colors.blue,
              cursorRadius: Radius.circular(30),
              style: TextStyle(color: Colors.black),
              inputFormatters: [
                //BlacklistingTextInputFormatter(RegExp("[abcdefg]")),
                WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
              ],
              // onEditingComplete: (){
              //   setState(() {
              //     this._t = 'done';
              //   });
              // },
              onSubmitted: (v) {
                setState(() {
                  this._t = v;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.people),
                hintText: '请输入你合法的名字',
                //hintStyle: TextStyle(color: Color.fromRGBO(200, 200, 200, 1)),
                prefixText: '姓名:',
                fillColor: this._bc,
                filled: true,
                //prefixStyle: TextStyle(color: Color.fromRGBO(20, 20, 20, 0.7)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              )),

          TextField(
            focusNode: _fnode2,
          ),
          FlatButton(onPressed: (){
            //_fnode1.requestFocus();
            _fnode1.nextFocus();
          }, child: Text('移动焦点')),
          RaisedButton(
              child: Text('失去焦点'),
              onPressed: () {
                _fnode1.unfocus();
              })
        ],
      ),
    );
  }
}
