import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconOfGender;
  final String labelOfGender;
  // ignore: use_key_in_widget_constructors
  const IconContent({
    required this.iconOfGender,
    required this.labelOfGender,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconOfGender),
        const SizedBox(
          height: 15,
        ),
        Text(
          labelOfGender,
          style: const TextStyle(fontSize: 18, color: Color(0xff8d8e99)),
        ),
      ],
    );
  }
}