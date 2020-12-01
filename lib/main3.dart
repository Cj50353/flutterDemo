/*
 * @Date: 2020-12-01 17:46:26
 * @LastEditors: jcl
 * @LastEditTime: 2020-12-01 17:47:48
 * @FilePath: /helloworld/lib/main3.dart
 */
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(List<String> args) {
  return runApp(new MyApp());
}

// step3 添加一个 有状态的部件（Stateful widget）
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'helloworld',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('welcome'),
          ),
          body: new Center(child: new RandomWords()),
        ));
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}
