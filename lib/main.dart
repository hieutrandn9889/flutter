import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: new Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

// khoi tao RandomWordsState
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _words = <WordPair>[]; // khai bao mang
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final Set<WordPair> _saved = new Set<WordPair>(); // k cho duplication

  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    // return Text(wordPair.asUpperCase);
    return ListView.builder(itemBuilder: (context, index) {
      if (index.isOdd) //index la so le
        return Divider();

      if (index >= _words.length) {
        _words.addAll(generateWordPairs().take(
            10)); // index lon hon mang thi lay 10 elements >> load 10 elements
      }
      return _buildRow(_words[index]);
    });
  }

  Widget _buildRow(WordPair wordPair) {
    final bool _alreadySaved = _saved.contains(
        wordPair); // if list chua wordpair >> truyen vao _alreadySaved
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        _alreadySaved
            ? Icons.favorite
            : Icons
                .favorite_border, // neu da co thi trai tim do nguoc lai mau xam
        color: _alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() { // clicking to remove or add
          if (_alreadySaved) {
            _saved.remove(wordPair);
          } else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }
}
