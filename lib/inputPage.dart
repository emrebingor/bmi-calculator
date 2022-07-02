import 'package:bmi_calculator_flutter_app/constants.dart';
import 'package:bmi_calculator_flutter_app/icon_design.dart';
import 'package:bmi_calculator_flutter_app/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  cardChild: IconDesign(
                    icon: FontAwesomeIcons.mars,
                    gender: 'MALE',
                  ),
                  color: kContainerColor,
                ),
                ReusableCard(
                  cardChild: IconDesign(
                    icon: FontAwesomeIcons.venus,
                    gender: 'FEMALE',
                  ),
                  color: kContainerColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Row(

              children: <Widget>[
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


