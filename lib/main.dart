import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main(List<String> args) {
  return runApp(new MyApp());
}

// 创建 Flutter app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'helloworld',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('welcome'),
          ),
          body: new Center(
            child: new Text('helloworld'),
          ),
        ));
    // TODO: implement build
  }
}
