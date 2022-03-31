import 'package:flutter/material.dart';

class RounIconButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RounIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
    );
  }
}
