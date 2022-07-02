import 'package:bmi_calculator_flutter_app/calculator_button.dart';
import 'package:bmi_calculator_flutter_app/constants.dart';
import 'package:bmi_calculator_flutter_app/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
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
                  Text('Normal', style: kResultTextStyle),
                  Text(
                    '19',
                    style: kResultNumber,
                  ),
                  Text('Comment', style: kResultCommentText),
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
