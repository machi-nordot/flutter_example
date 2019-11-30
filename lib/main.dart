import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          stars,
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            )
          )
        ],
      )
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // DefaultTextStyle.merge()を使用することで、styleに指定した要素を
    // child以下にあるテキスト要素に反映することができる。
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500]),
                Text('PREP:'),
                Text('25 min')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.timer, color: Colors.green[500]),
                Text('COOK:'),
                Text('1 hr')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.restaurant, color: Colors.green[500]),
                Text('FEEDS:'),
                Text('4-6')
              ],
            ),
          ],
        )
      )
    );

    final sample = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: <Widget>[
          Text('titleText'),
          Text('subTitle'),
          ratings,
          iconList,
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: sample,
      ),
    );
  }
}
