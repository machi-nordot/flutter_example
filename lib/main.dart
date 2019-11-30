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
        child: ParentWidget(),
      )
    )
  );
}

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  @override
  Widget build(BuildContext context) => Container(
    child: TapBoxB(
      active: _active,
      onChanged: _handleTapBoxChanged,
    ),
  );

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }
}

class TapBoxB extends StatelessWidget {
  TapBoxB({ Key key, this.active: false, @required this.onChanged })
    : assert(active != null),
      assert(onChanged != null),
      super(key: key);
  
  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) => GestureDetector(
    child: Container(
      child: Center(
        child: Text(
          active ? 'Active' : 'Inactive',
          style: TextStyle(fontSize: 32.0, color: Colors.white)
        ),
      ),
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: active ? Colors.lightGreen[700] : Colors.grey[600],
      ),
    ),
    onTap: _handleTap,
  );

  void _handleTap() {
    onChanged(!active);
  }
}