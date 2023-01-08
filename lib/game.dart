import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'build_button.dart';
import 'game_model.dart';


class Game extends StatefulWidget {
  

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
GameModel calculate = GameModel();

 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: <Widget>[
      
      
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: 
              Consumer<GameModel>(
                builder: (context, value, child) {
                  return Text(value.equation, style: TextStyle(fontSize: calculate.equationFontSize),);
                }
              ),
            ),
      
      
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Consumer<GameModel>(
                builder: (context, value, child) {
                  return Text(value.result, style: TextStyle(fontSize: calculate.resultFontSize),);
                }
              ),
            ),
      
            Consumer<GameModel>(builder: (context, value, child) {
                
                return 
                
                Text('${value.answers}');
            }),

        
            Expanded(
              child: Divider(),
            ),
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          BuildButton("C", 1, Colors.blue, const CircleBorder(), true),
                          BuildButton("⌫", 1, Colors.blue, const CircleBorder(), true),
                          BuildButton("÷", 1, Colors.blue, const CircleBorder(), false),
                        ]
                      ),
      
                      TableRow(
                          children: [
                            BuildButton("7", 1, Colors.black54, const CircleBorder(), false),
                            BuildButton("8", 1, Colors.black54, const CircleBorder(), false),
                            BuildButton("9", 1, Colors.black54, const CircleBorder(), false),
                          ]
                      ),
      
                      TableRow(
                          children: [
                            BuildButton("4", 1, Colors.black54, const CircleBorder(), false),
                            BuildButton("5", 1, Colors.black54, const CircleBorder(), false),
                            BuildButton("6", 1, Colors.black54, const CircleBorder(), false),
                          ]
                      ),
      
                      TableRow(
                          children: [
                            BuildButton("1", 1, Colors.black54, const CircleBorder(), false),
                            BuildButton("2", 1, Colors.black54, const CircleBorder(), true),
                            BuildButton("3", 1, Colors.black54, const CircleBorder(), true),
                          ]
                      ),
      
                      TableRow(
                          children: [
                            BuildButton(".", 1, Colors.black54, const CircleBorder(), false),
                            BuildButton("0", 1, Colors.black54, const CircleBorder(), false),
                            BuildButton("00", 1, Colors.black54, const CircleBorder(), false),
                          ]
                      ),
                    ],
                  ),
                ),
      
      
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                           BuildButton("×", 1, Colors.blue, const CircleBorder(), true),
                          ]
                      ),
      
                      TableRow(
                          children: [
                            BuildButton("-", 1, Colors.blue, const CircleBorder(), true),
                          ]
                      ),
      
                      TableRow(
                          children: [
                            BuildButton("+", 1, Colors.blue, const CircleBorder(), false),
                          ]
                      ),
      
                      TableRow(
                          children: [
                            BuildButton("=", 2, Colors.redAccent, const RoundedRectangleBorder(), true),
                          ]
                      ),
                    ],
                  ),
                )
              ],
            ),
      
          ],
        ),
      ),
    );
  }
}
