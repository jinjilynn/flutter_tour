import 'package:flutter/material.dart';

class CustomScrollViewDemo extends StatefulWidget {
  @override
 _CustomerScrollViewDemoState createState() => _CustomerScrollViewDemoState();
}

class _CustomerScrollViewDemoState extends State<CustomScrollViewDemo>{
  ScrollController _scrollController = ScrollController(initialScrollOffset: 0);
  @override
   Widget build(BuildContext context) {
    return  CustomScrollView(
        primary: false,
        controller:_scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('无敌海景房'),
              background: Image.network('https://5b0988e595225.cdn.sohucs.com/images/20171002/f2cda2736d8c464a90ac5d558e4ef23a.jpeg',fit:BoxFit.cover),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: new SliverGrid(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {   
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: new Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {  
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: new Text('list item $index'),
                  );
                },
                childCount: 50
            ),
          ),
        ],
    );
  }
  
}