import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({this.buttonName, required this.onTap});

  final Function() onTap;
  final String? buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kButtonColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kButtonHeight,
        child: Center(
          child: Text(
            buttonName.toString(),
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}