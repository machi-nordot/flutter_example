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
      body: _buildCard(),
    ),
  );

  Widget _buildCard() => SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('xxxxxxx', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('yyyyyy'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('03-1234-5678', style: TextStyle(fontWeight: FontWeight.w500)),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            )
          ),
          ListTile(
            title: Text('example@example.com', style: TextStyle(fontWeight: FontWeight.w500)),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            )
          ),
        ],
      )
    ),
  );
}
