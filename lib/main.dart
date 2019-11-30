import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Widgets layout demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Widgets layout demo'),
      ),
      body: _buildGrid([
        'images/pic1.jpg',
        'images/pic2.jpg',
        'images/pic3.jpg',
        'images/pic1.jpg',
        'images/pic2.jpg',
        'images/pic3.jpg',
      ]),
    ),
  );

  // GridView.count: 1列の要素数を指定して作成
  // GridView.extent: タイル(gridの各要素)の最大幅を指定して作成
  Widget _buildGrid(List<String> images) => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: images.map((image) => Container(
      child: Image.asset(image),
    )).toList(),
  );
}
