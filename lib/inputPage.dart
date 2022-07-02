import 'package:flutter/material.dart';

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
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  
                ),
                Container(),
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
