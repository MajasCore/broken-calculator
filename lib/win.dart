import 'package:broken_calculator/const.dart';
import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  int? score;
  Win({@required this.score});

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('You Won \n score: ${widget.score}', style: Theme.of(context).textTheme.headline1,),
            ),
            ElevatedButton(onPressed: (){
              
              Navigator.pushNamed(context, "/");
            }, child: Text('Go to main'),),
          ],
        ),
      ),
    );
  }
}