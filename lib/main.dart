import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Navigation',
    home: MainScreen(),
  );
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Main Screen'),
    ),
    body: GestureDetector(
      // 画面間でアニメーションさせたいウィジットをHeroウィジットでラップする。
      child: Hero(
        tag: 'imageHero',
        child: Image.network('https://picsum.photos/250?image=9'),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
      }
    )
  );
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: GestureDetector(
      child: Center(
        child: Hero(
          tag: 'imageHero',
          child: Image.network('https://picsum.photos/250?image=9'),
        )
      ),
      onTap: () {
        Navigator.pop(context);
      },
    ),
  );
}