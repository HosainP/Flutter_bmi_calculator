import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/card.dart';
import 'package:flutter/material.dart';
import 'const.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.healthCondition,
      required this.interpretation,
      required this.result});

  final String healthCondition;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Results Page',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
            child: Text(
              'Result',
              textAlign: TextAlign.left,
              style: kTitleTextStyle,
            ),
          ),
          MyCard(
            func: () {},
            color: kActiveColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  healthCondition,
                  style: TextStyle(
                    color: healthCondition == 'Underweight'
                        ? Colors.yellow
                        : (healthCondition == 'Normal'
                            ? Colors.green
                            : Colors.red),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  result,
                  style: kBMINumberTextStyle,
                ),
                Text(
                  interpretation,
                  textAlign: TextAlign.center,
                  style: kInterpretationTextStyle,
                ),
              ],
            ),
          ),
          BottomButton(
              func: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
