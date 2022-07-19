import 'package:bmi_calculator_flutter_app/calculator_button.dart';
import 'package:bmi_calculator_flutter_app/constants.dart';
import 'package:bmi_calculator_flutter_app/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  String bmiResult;
  String resultText;
  String interpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Your Result',
              style: kYourResultText,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText, style: kResultTextStyle),
                  Text(
                    bmiResult,
                    style: kResultNumber,
                  ),
                  Text(interpretation, style: kResultCommentText, textAlign: TextAlign.center,),
                ],
              ),
              color: kContainerColor,
            ),
          ),
          Expanded(
            child: CalculateButton(
                buttonName: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }
}
