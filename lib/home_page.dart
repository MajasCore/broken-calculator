
//import 'package:broken_calculator/game.dart';
//import 'package:broken_calculator/game_model.dart';
import 'counter_game.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class MyHomePage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                AnimatedTextKit(animatedTexts: [/*ColorizeAnimatedText('Broken \nCalculator', textStyle: TextStyle(fontFamily: 'PressStart2P', fontSize: 25),
                  colors: [Colors.yellow, Colors.black, Colors.blue, Colors.white], 
                  speed: const Duration(milliseconds: 500,),
                  
            ),*/
            TypewriterAnimatedText(GameModel().name, textStyle: TextStyle(fontFamily: 'PressStart2P', fontSize: 25), curve: Curves.ease,speed: Duration(milliseconds: 60)),
            ], ),
                /*Text(
                  'Broken \nCalculator',
                   style: Theme.of(context).textTheme.headline3,
                ),*/
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    clipBehavior: Clip.antiAlias,
                    itemCount: GameModel().levels,
                    itemBuilder: (context, index) => Card(
                    
                      child: ElevatedButton(
                        child: Text('Level ${index + 1}'),
                        style: ElevatedButton.styleFrom(
                          //fixedSize: const Size(80, 80),
                          shape: RoundedRectangleBorder(),
                          padding: const EdgeInsets.all(20.0),
                          primary: Colors.red[800],
                          ),
                        
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context) => Game(),),);},
                        //title: Text('LEVEL ${index + 1}),
                        
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}