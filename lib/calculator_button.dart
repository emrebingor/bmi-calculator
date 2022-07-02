import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({this.buttonName});

  final String? buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kButtonColor,
      child: Center(
        child: Text(
          buttonName.toString(),
          style: kButtonTextStyle,
        ),
      ),
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      height: kButtonHeight,
    );
  }
}