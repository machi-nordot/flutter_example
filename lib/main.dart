import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Navigation',
    home: HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Demo'),
    ),
    body: Center(child: SelectionButton()),
  );
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => RaisedButton(
    onPressed: () {
      // ここの遷移処理は複雑になるので別メソッドに分けています。
      _navigateAndDisplaySelection(context);
    },
    child: Text('オプションを選択'),
  );

  void _navigateAndDisplaySelection(BuildContext context) async {    
    // 遷移先からのデータは Navigator.pushメソッドの戻り値として戻ってくる。
    // ただし、画面遷移してから元画面に戻るには時間がかかるので、データは直接渡されるのではなくFutureとして戻ってくる。
    // 実際のデータが戻るまで待機する必要があるので、awaitキーワードを使用してFutereの解決を待機する。
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    Scaffold.of(context)
      ..removeCurrentSnackBar() // すでに表示されているスナックバーがある場合は削除する
      ..showSnackBar(SnackBar(content: Text(result)));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('選択してください'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('選択肢1'),
              onPressed: () {
                // 「選択肢1」というデータとともに元の画面に戻る処理
                Navigator.pop(context, '選択肢1');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('選択肢2'),
              onPressed: () {
                // 「選択肢2」というデータとともに元の画面に戻る処理
                Navigator.pop(context, '選択肢2');
              },
            ),
          ),
        ],
      ),
    ),
  );
}