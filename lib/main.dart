import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Asset demo',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Asset demo'),
      ),
      body: ImageAsset(),
    )
  );
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Image.asset('assets/image.png');
}