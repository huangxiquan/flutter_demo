import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     // This is the theme of your application.
    //     //
    //     // Try running your application with "flutter run". You'll see the
    //     // application has a blue toolbar. Then, without quitting the app, try
    //     // changing the primarySwatch below to Colors.green and then invoke
    //     // "hot reload" (press "r" in the console where you ran "flutter run",
    //     // or simply save your changes to "hot reload" in a Flutter IDE).
    //     // Notice that the counter didn't reset back to zero; the application
    //     // is not restarted.
    //     primarySwatch: Colors.blue,
    //     primaryColor: Colors.white
    //   ),
    //   home: Pavlova()
    // );

    // return Pavlova();

    /**
     * Demo
     */
    // return Container(
    //     decoration: BoxDecoration(color: Colors.white),
    //     child: Center(
    //       child: Text(
    //         'hello world',
    //         textDirection: TextDirection.ltr,
    //         style: TextStyle(
    //           color: Colors.black87
    //         ),
    //       ),
    //     ),
    // );

    /**
     * Row
     */
    // return Container(
    //   decoration: BoxDecoration(color: Colors.white),
    //     child: Directionality(
    //         textDirection: TextDirection.ltr,
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Image.asset("images/pic1.jpg"),
    //             Image.asset("images/pic2.jpg"),
    //             Image.asset("images/pic3.jpg"),
    //           ],
    //         )
    //     )
    // );

    /**
     * expanded
     */
    // return Container(
    //     decoration: BoxDecoration(color: Colors.white),
    //     child: Directionality(
    //         textDirection: TextDirection.ltr,
    //         child: Row(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Expanded(child: Image.asset("images/pic4.jpg"),),
    //             Expanded(
    //               child: Image.asset("images/pic5.jpg"),
    //               flex: 2,
    //             ),
    //             Expanded(child: Image.asset("images/pic6.jpg"),),
    //           ],
    //         )
    //     )
    // );

    /**
     * packing
     */
    // return Container(
    //     decoration: BoxDecoration(color: Colors.white),
    //     child: Directionality(
    //         textDirection: TextDirection.ltr,
    //         child: Row(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             Icon(Icons.star, color: Colors.green[500],),
    //             Icon(Icons.star, color: Colors.green[500],),
    //             Icon(Icons.star, color: Colors.green[500],),
    //             Icon(Icons.star, color: Colors.black,),
    //             Icon(Icons.star, color: Colors.black,),
    //           ],
    //         )
    //     )
    // );

    /**
     * container
     */
     return Container(
       decoration: BoxDecoration(color: Colors.white),
       child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child:  Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 10, color: Colors.black38),
                                    borderRadius: const BorderRadius.all(const Radius.circular(8)),
                                  ),
                                  child: Image.asset('images/pic7.jpg'),
                                  margin: EdgeInsets.all(4),
                        ),
                    ),
                   Expanded(
                       child: Container(
                               decoration: BoxDecoration(
                                   border: Border.all(width: 10, color: Colors.black38),
                                   borderRadius: const BorderRadius.all(const Radius.circular(8)),
                               ),
                               child: Image.asset('images/pic8.jpg'),
                               margin: EdgeInsets.all(4),
                   ))

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child:  Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 10, color: Colors.black38),
                          borderRadius: const BorderRadius.all(const Radius.circular(8)),
                        ),
                        child: Image.asset('images/pic9.jpg'),
                        margin: EdgeInsets.all(4),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 10, color: Colors.black38),
                            borderRadius: const BorderRadius.all(const Radius.circular(8)),
                          ),
                          child: Image.asset('images/pic10.jpg'),
                          margin: EdgeInsets.all(4),
                        ))

                  ],
                ),
              ],
          ),
      ),
     );

  }


}



class Pavlova extends StatefulWidget {
  const Pavlova({Key? key}) : super(key: key);

  @override
  _PavlovaState createState() => _PavlovaState();
}

class _PavlovaState extends State<Pavlova> {
  @override
  Widget build(BuildContext context) {

    final image = Image.asset('images/pavlova.jpg');

    final starts = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500],size: 10,),
        Icon(Icons.star, color: Colors.green[500],size: 10,),
        Icon(Icons.star, color: Colors.green[500],size: 10,),
        Icon(Icons.star, color: Colors.black,size: 10,),
        Icon(Icons.star, color: Colors.black,size: 10,),
      ],
    );

    final ratings = Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          starts,
          Text(
            '170 Reviews',
            style: TextStyle(
              fontSize: 8
            ),
          )
        ],
      ),
    );

    final fontStyle = TextStyle(
      fontSize: 8,
      letterSpacing: 0.5,
      height: 2
    );

    final prep = Column(
      children: [
        Icon(Icons.kitchen, color: Colors.green[500],size: 15,),
        Text('PREP',style: fontStyle,),
        Text('25 min',style: fontStyle,),
      ],
    );

    final cook = Column(
      children: [
        Icon(Icons.timer, color: Colors.green[500],size: 15,),
        Text('COOK',style: fontStyle,),
        Text('1 h',style: fontStyle,)
      ],
    );

    final feeds = Column(
      children: [
        Icon(Icons.restaurant, color: Colors.green[500],size: 15,),
        Text('FEEDS',style: fontStyle,),
        Text('4-6',style: fontStyle,)
      ],
    );

    final leftColumn = Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          Text(
            "Pavlova",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold
            ),

          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              'The outlined section is implemented as two rows.',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          ratings,
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                prep,
                cook,
                feeds,
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Pavlova'),
      ),
      body: Center(
          child: Container (
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 132,
                  child: leftColumn,
                ),
                image
              ],
            ),
          ),
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: RandomWords(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = <WordPair>{};

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
        actions: [
          IconButton(onPressed: _pushSaved, icon: Icon(Icons.list)),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (BuildContext context) {
            final titles = _saved.map((WordPair wordPair){
              return ListTile(
                title: Text(
                  wordPair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            });
            final divided = ListTile.divideTiles(
                context: context,
                tiles: titles
            ).toList();
            return Scaffold(
              appBar: AppBar(
                title: Text('Saved Suggestions'),
              ),
              body: ListView(children: divided,),
            );
          },
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context,i) {
          if(i.isOdd) {
            return const Divider();
          }
          final index = i ~/ 2;
          if(index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final alreadySaved = _saved.contains(wordPair);
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if(alreadySaved) {
            _saved.remove(wordPair);
          }else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }
}

