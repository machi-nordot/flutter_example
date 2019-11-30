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
    child: TapBoxC(
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

class TapBoxC extends StatefulWidget {
  TapBoxC({ Key key, this.active: false, @required this.onChanged })
    : assert(active != null),
      assert(onChanged != null),
      super(key: key);
  
  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  _TapBoxCState createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;

  @override
  Widget build(BuildContext context) => GestureDetector(
    child: Container(
      child: Center(
        child: Text(
          // 変数widgetでTapBoxCを参照できる
          widget.active ? 'Active' : 'Inactive',
          style: TextStyle(fontSize: 32.0, color: Colors.white)
        ),
      ),
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        // 変数widgetでTapBoxCを参照できる
        color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
        // 要素をタップしている間、枠線にハイライトが表示される
        border: _highlight ? Border.all(
          color: Colors.teal[700],
          width: 10.0,
        ) : null,
      ),
    ),
    onTapDown: _handleTapDown,
    onTapUp: _handleTapUp,
    onTapCancel: _handleTapCancel,
    onTap: _handleTap,
  );

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    // 変数widgetでTapBoxCを参照できる
    widget.onChanged(!widget.active);
  }
}