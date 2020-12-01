/*
 * @Date: 2020-12-01 17:46:16
 * @LastEditors: jcl
 * @LastEditTime: 2020-12-01 17:47:15
 * @FilePath: /helloworld/lib/main copy.dart
 */
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(List<String> args) {
  return runApp(new MyApp());
}

//step2 使用外部包(package)
// 在pubspec.yaml中添加依赖到dependencies 然后在 import
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
        title: 'helloworld',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('welcome'),
          ),
          body: new Center(
            child: new Text(wordPair.asPascalCase),
          ),
        ));
  }
}
