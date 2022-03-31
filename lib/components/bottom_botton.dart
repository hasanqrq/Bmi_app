
import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class BottomBotton extends StatelessWidget {
  final VoidCallback onTap;
  final String bottonTitle;
  const BottomBotton({required this.bottonTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 20),
      ),
    );
  }
}