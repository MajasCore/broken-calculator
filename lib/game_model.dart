


import 'package:broken_calculator/win.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class GameModel extends ChangeNotifier{
  String name = 'Broken \n Calculator';
  int levels = 3;
  String _equation = "0";
  String _result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;
  double _reesult = 0;
  List<int> answers = [2, 4, 7, 9, 6];
  int _score = 0;
 

  String get equation => _equation;
  String get result => _result;
  double get reesult => _reesult;
  int get score => _score;

 GameModel();

  buttonPressed(String buttonText){
    
      if(buttonText == "C"){
        _equation = "0";
        _result = "0";
        equationFontSize = 38.0;
        resultFontSize = 48.0;
      }

      else if(buttonText == "⌫"){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        _equation = _equation.substring(0, _equation.length - 1);
        if(_equation == ""){
          _equation = "0";
        }
      }

      else if(buttonText == "="){
        equationFontSize = 38.0;
        resultFontSize = 48.0;

        expression = _equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

        try{
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          _result = '${exp.evaluate(EvaluationType.REAL, cm)}';
          
        }catch(e){
          _result = "Error";
        }
        _reesult = Parser().parse(expression).evaluate(EvaluationType.REAL, ContextModel());
          
        
      }

      else{
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if(_equation == "0"){
          _equation = buttonText;
        }else {
          _equation = _equation + buttonText;
        }
      }
      print(_reesult);
      notifyListeners();
    }

    checking(double reesult){
      
      for(var i=0; i<answers.length; i++){
        
        if(reesult == answers[i]){
          answers.remove(answers[i]);
          _score ++;
        }

      }
      print(score);
      
      answers;
      print(answers);
      notifyListeners();

    }
  
  }



 