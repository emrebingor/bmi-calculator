import 'package:bmi_calculator_flutter_app/calculator_button.dart';
import 'package:bmi_calculator_flutter_app/constants.dart';
import 'package:bmi_calculator_flutter_app/icon_design.dart';
import 'package:bmi_calculator_flutter_app/material_button.dart';
import 'package:bmi_calculator_flutter_app/results_page.dart';
import 'package:bmi_calculator_flutter_app/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int weight = 50;
  int age = 18;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
                Expanded(
                  child: ReusableCard(
                    cardChild: IconDesign(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                    color: kContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: IconDesign(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                    color: kContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '$height',
                        style: kNumberStyle,
                      ),
                      const Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              color: kContainerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'WEIGHT',
                          style: kTextStyle,
                        ),
                        Text('$weight', style: kNumberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RowMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RowMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus),
                          ],
                        ),
                      ],
                    ),
                    color: kContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'AGE',
                          style: kTextStyle,
                        ),
                        Text(
                          '$age',
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RowMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus),
                            const SizedBox(width: 10.0),
                            RowMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus),
                          ],
                        ),
                      ],
                    ),
                    color: kContainerColor,
                  ),
                ),
              ],
            ),
          ),
          CalculateButton(
            onTap: () {

              CalculatorBrain calculator = CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calculator.calculateBMI().toString(),
                    resultText: calculator.getResult(),
                    interpretation: calculator.getResultComment(),
                  ),
                ),
              );
            },
            buttonName: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
