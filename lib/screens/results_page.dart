import 'package:bmi_app/components/bottom_botton.dart';
import 'package:bmi_app/components/reusable_card.dart';
import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatefulWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0D22),
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              // ignore: avoid_unnecessary_containers
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                     widget.resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      widget.bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      widget.interpretation.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 22),
                    )
                  ],
                ),
                colour: kActiveCardColor,
                onPress: () {},
              ),
            ),
            BottomBotton(
              bottonTitle: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
