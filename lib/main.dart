



//import 'package:broken_calculator/game.dart';
//import 'package:broken_calculator/game_model.dart';
import 'counter_game.dart';
import 'package:broken_calculator/home_page.dart';
import 'package:broken_calculator/win.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GameModel(),
      child:  const MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff1C1D36),
        scaffoldBackgroundColor: Color(0x1F2C38),
        
        textTheme: const TextTheme(
          
          headline1: TextStyle(
              fontSize: 52.0, fontWeight: FontWeight.bold, color: Colors.yellow),
          headline2: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            ),
          headline3: TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: 25,
            color: Colors.white,
          )
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '//': (context) => Game(),
        '///': (context) => Win(),
      },
    );
  
}
}