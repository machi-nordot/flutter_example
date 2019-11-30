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
      body: _buildListTile(),
    ),
  );

  Widget _buildListTile() => ListTile(
    leading: Icon(
      Icons.restaurant_menu,
      color: Colors.blue[500],
    ),
    title: Text('Main text'),
    subtitle: Text('Sub text 1\nSub text 2'),
    trailing: DropdownButton(
      hint: Text('番号'),
      items: ['1', '2', '3', '4'].map((value) => DropdownMenuItem(
        value: value,
        child: Text(value),        
      )).toList(),
      onChanged: (value) {},
    )
  );
}
