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
      body: StringAsset(),
    )
  );
}

class StringAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
    child: Container(
      // Futureの結果をウィジットにマッピングする際は、FutureBuilderを使用する。
      child: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('assets/top_text.txt'),
        builder: (context, snapshot) => Text(snapshot.data),
      ),
    ),
  );
}