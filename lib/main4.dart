/*
 * @Date: 2020-12-01 17:46:26
 * @LastEditors: jcl
 * @LastEditTime: 2020-12-01 18:05:11
 * @FilePath: /helloworld/lib/main4.dart
 */
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(List<String> args) {
  return runApp(new MyApp());
}

// step3 创建一个无限滚动ListView
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'helloworld 滚动',
        // home: new Scaffold(
        //   appBar: new AppBar(
        //     title: new Text('welcome'),
        //   ),
        //   body: new Center(child: new RandomWords()),
        // ));
        home: new RandomWords());
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
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('滚'),
      ),
      body: _buildSuggestions(),
    );
  }

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16),
        // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
        // 在偶数行，该函数会为单词对添加一个ListTile row.
        // 在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
        // 注意，在小屏幕上，分割线看起来可能比较吃力。
        itemBuilder: (context, i) {
          if (i.isOdd) return new Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
        title: new Text(
      pair.asPascalCase,
      style: _biggerFont,
    ));
  }
}
