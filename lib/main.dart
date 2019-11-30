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
      body: _buildList(),
    ),
  );

  Widget _buildList() => ListView(
    children: <Widget>[
      _tile('映画館1', '映画館です', Icons.theaters),
      _tile('映画館2', '映画館です', Icons.theaters),
      _tile('映画館3', '映画館です', Icons.theaters),
      _tile('映画館4', '映画館です', Icons.theaters),
      _tile('映画館5', '映画館です', Icons.theaters),
      _tile('映画館6', '映画館です', Icons.theaters),
      Divider(),
      _tile('レストラン1', 'レストランです', Icons.restaurant),
      _tile('レストラン2', 'レストランです', Icons.restaurant),
      _tile('レストラン3', 'レストランです', Icons.restaurant),
      _tile('レストラン4', 'レストランです', Icons.restaurant),
      _tile('レストラン5', 'レストランです', Icons.restaurant),
      _tile('レストラン6', 'レストランです', Icons.restaurant),      
    ],
  );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title, style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
    )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}
