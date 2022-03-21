import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xff1D1F33);
// ignore: use_full_hex_values_for_flutter_colors
const bottomContainerColor = Color(0xffeb11555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0A0D22),
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: SafeArea(
          child: Column(children: [
            Expanded(
                child: Row(children: const [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                    iconOfGender: FontAwesomeIcons.mars,
                    labelOfGender: "MALE",
                  ),
                ),
              )
            ])),
            Expanded(
                child: Row(children: const [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                    iconOfGender: FontAwesomeIcons.venus,
                    labelOfGender: "FEMALE",
                  ),
                ),
              )
            ])),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: Container(),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        colour: activeCardColor, cardChild: Container()),
                  ),
                  Expanded(
                    child: ReusableCard(
                        colour: activeCardColor, cardChild: Container()),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ]),
        ));
  }
}



class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  const ReusableCard({Key? key, required this.colour, required this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff1D1F33),
      ),
    );
  }
}
