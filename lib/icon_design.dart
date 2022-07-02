import 'package:flutter/material.dart';

class IconDesign extends StatelessWidget {

  const IconDesign({this.gender, this.icon});

  final String? gender;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        Text(
          gender ?? 'Male',
          style: const TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
        ),
      ],
    );
  }
}