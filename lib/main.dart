import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Navigation',
    home: Scaffold(
      appBar: AppBar(
        title: Text('TapBox'),
      ),
      body: Center(
        child: TapBoxA(),
      )
    )
  );
}

class TapBoxA extends StatefulWidget {
  @override
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  @override
  Widget build(BuildContext context) => GestureDetector(
    child: Container(
      child: Center(
        child: Text(
          _active ? 'Active' : 'Inactive',
          style: TextStyle(fontSize: 32.0, color: Colors.white)
        ),
      ),
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: _active ? Colors.lightGreen[700] : Colors.grey[600],
      ),
    ),
    onTap: _handleTap,
  );

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }
}