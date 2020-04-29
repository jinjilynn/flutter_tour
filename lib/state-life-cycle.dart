import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  final initCount;
  Counter({ this.initCount:0 });
  @override
  State<StatefulWidget> createState() {
    print('createState');
    return _CounterState();
  }
}

class _CounterState extends State<Counter>{
  int count;
  @override
  void initState() {
    super.initState();
    count = widget.initCount;
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return  Row(
      children: <Widget>[
            FlatButton(
                      child: Text('$count', textDirection: TextDirection.ltr,),
                      onPressed: (){setState(() {
                        count++;
                      });},
          ),
          Icon(Icons.accessible,color: Colors.green,)
      ],
    );
  }

  @override
  void didUpdateWidget(Counter oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void reassemble() {
    print('reassemble');
    super.reassemble();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }
}