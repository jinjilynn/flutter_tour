import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  Provider(r, randomString, {Key key, this.child})
      : randomString = randomString,
        r = r,
        super(key: key, child: child);
  final String r;
  final Function randomString;
  final Widget child;

  static Provider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>();
  }

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return true;
  }
}

class WrapedByProvider extends StatefulWidget {
  WrapedByProvider({Key key}) : super(key: key);

  @override
  _WrapedByProviderState createState() => _WrapedByProviderState();
}

class _WrapedByProviderState extends State<WrapedByProvider> {
  String _r = 'xxxxxxxxxxx';
  randomString() {
    setState(() {
      this._r = '00000000000';
    });
  }

  void initState() {
    super.initState();
    print('wraped initState');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Provider(
      _r,
      randomString,
      child: Counter(
        initCount: 1,
      ),
    );
  }

    @override
  void didUpdateWidget(WrapedByProvider oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('wraped didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('wraped deactivate');
  }

  @override
  void reassemble() {
    print('wraped reassemble');
    super.reassemble();
  }

  @override
  void didChangeDependencies() {
    print('wraped didChangeDependencies');
    super.didChangeDependencies();
  }
}

class Counter extends StatefulWidget {
  final initCount;
  Counter({this.initCount: 0});
  @override
  State<StatefulWidget> createState() {
    print('createState');
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int count;
  @override
  void initState() {
    super.initState();
    count = widget.initCount;
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    Provider p = Provider.of(context);
    return Row(
      children: <Widget>[
        RaisedButton(
          child: Text(
            'Tragger Inherit',
            textDirection: TextDirection.ltr,
          ),
          onPressed: () {
            p.randomString();
          },
        ),
        Text('${p.r}'),
        RaisedButton(
          child: Text(
            '$count',
            textDirection: TextDirection.ltr,
          ),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        Icon(
          Icons.accessible,
          color: Colors.green,
        )
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
    print('------------------------------------------------------------');
    super.didChangeDependencies();
  }
}
