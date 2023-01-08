import 'package:broken_calculator/const.dart';
import 'package:broken_calculator/win.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'game_model.dart';

class BuildButton extends StatelessWidget {
  String buttonText;
  int buttonHeight;
  Color buttonColor;
  late int result;
  OutlinedBorder shape;
  bool visible = false;
  
  BuildButton(this.buttonText, this.buttonHeight, this.buttonColor, this.shape, this.visible);
  
  void updatedResult (String result){
    
  }
  
  @override
  Widget build(BuildContext context) {
    
     return Visibility(
       visible: visible,
       child: Container(
        height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
        padding: EdgeInsets.all(8),
        //color: buttonColor,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(80, 80),
              shape: shape,
              //: EdgeInsets.all(20.0),
              primary: buttonColor,
            ),
            
            
            onPressed: () { 
              context.read<GameModel>().buttonPressed(buttonText);
              //int reesult = int.parse(context.read<GameModel>().result);
              
              Provider.of<GameModel>(context, listen: false).checking(context.read<GameModel>().reesult);
              int newScore = context.read<GameModel>().score;
              
            
        if (Provider.of<GameModel>(context, listen: false).answers.isEmpty){
          print(GameModel().answers);
          print('empty');
         Navigator.push(context, MaterialPageRoute(builder: ((context) => Win(score: newScore))));
        }
        
         
              },
            child: Text(
              buttonText,
              style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
              ),
            )
        ),
         ),
     );
  }
}
