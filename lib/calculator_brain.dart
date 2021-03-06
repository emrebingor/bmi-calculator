import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;

  double? _bmi;

  String? calculateBMI() {
    _bmi = (weight ?? 0) / pow((height ?? 0)/100, 2);
    return _bmi?.toStringAsFixed(1);
  }

  String getResult() {
    if ((_bmi ?? 0) >= 25 ){
      return 'Overweight';
    }
    else if((_bmi ?? 0) >18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getResultComment() {
    if ((_bmi ?? 0) >= 25 ){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    else if((_bmi ?? 0) >18.5){
      return 'You have a normal body weight. Good job!';
    }
    else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }




}
