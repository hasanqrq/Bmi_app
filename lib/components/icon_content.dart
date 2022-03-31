import 'package:bmi_app/constants.dart';
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
        Icon(
          iconOfGender,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(labelOfGender,style: kLabelTextStyle,)

       
      ],
    );
  }
}
