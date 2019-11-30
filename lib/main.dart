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
      body: _buildImageContainer([
        'images/pic1.jpg',
        'images/pic2.jpg',
        'images/pic3.jpg',
        'images/pic1.jpg',
        'images/pic2.jpg',
        'images/pic3.jpg',
      ]),
    ),
  );

  Widget _buildImageContainer(List<String> images) {
    final slicedImages = images.fold<List<List<String>>>([], (list, image) {
      if (list.length == 0 || list.last.length >= 2) {
        list.add(<String>[]);
      }
      list.last.add(image);
      return list;
    });

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: slicedImages.map((rowImages) => Row(
          children: rowImages.map((image) => Container(
            decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.black38),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            margin: EdgeInsets.all(4),
            child: Image.asset(image, width: 150),
          )).toList(),
        )).toList(),
      ),
    );
  }
}
