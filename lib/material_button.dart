import 'package:flutter/material.dart';

class RowMaterialButton extends StatelessWidget {
  const RowMaterialButton({required this.onPressed, required this.icon});

  final Function() onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}