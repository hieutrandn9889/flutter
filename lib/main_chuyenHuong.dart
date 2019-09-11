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
      home: RandomWords(),
      theme: ThemeData(
        primaryColor: Colors.red // mau do cua theme 
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
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
        actions: <Widget>[
          new IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushSaved,
          ) // task bar
        ],
      ),
      body: new Center(
        child: ListView.builder(itemBuilder: (context, index) {
          if (index.isOdd) //index la so le
            return Divider();

          if (index >= _words.length) {
            _words.addAll(generateWordPairs().take(10)); // index lon hon mang thi lay 10 elements >> load 10 elements
          }
          return _buildRow(_words[index]);
        }),
      ),
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final bool _alreadySaved = _saved.contains(wordPair); // if list chua wordpair >> truyen vao _alreadySaved
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        _alreadySaved
            ? Icons.favorite
            : Icons.favorite_border, // neu da co thi trai tim do nguoc lai mau xam
        color: _alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          // clicking to remove or add
          if (_alreadySaved) {
            _saved.remove(wordPair);
          } else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }

  void _pushSaved(){
    Navigator.of(context)
    .push(new MaterialPageRoute<void>(builder: (BuildContext context){
      final Iterable<ListTile> titles = _saved.map((WordPair pair){
        //tra ve khi bam icon task bar >> return new ListTile
          return new ListTile(
            title: new Text(
              pair.asUpperCase,
              style: _biggerFont
            ),
          );
      });
      final List<Widget> divided = ListTile.divideTiles(tiles: titles, context: context).toList();
      return new Scaffold(
        appBar: new AppBar(
          title: const Text("Saved list"),
        ),
        body: new ListView(
          children: divided,
        ),
      );
    }));
  }

}
