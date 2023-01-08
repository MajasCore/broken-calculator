import 'package:broken_calculator/win.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//counter_page_viewmodel.dart
//class CounterGameViewModel

class GameModel extends ChangeNotifier {
  int _x = 0;
  int get x => _x;
  String name = 'Counter \n Game';
  int levels = 2;

  void incrementNumber() {
    _x++;
    notifyListeners();
  }

  
}

class Game extends StatefulWidget {
  

  @override
  State<Game> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Game> {
  //int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<GameModel>(builder: (context, value, child) {
              return Text(
                '${value.x}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            Text(
              '${context.read<GameModel>().x}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { context.read<GameModel>().incrementNumber();
        if (context.read<GameModel>().x == 5){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => Win(score: 5))));
        }
        },
        tooltip: 'GameModel',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}