import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/result_input.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> args = ModalRoute.of(context).settings.arguments;
    final String bimResult = args['bimResult'];
    final String bimResultText = args['bimResultText'];
    final String bimResultInterpretation = args['bimResultInterpretation'];

    return Scaffold(
      appBar: AppBar(
        title: kAppTitleText,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReuseAbleCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ResultInput(
                      label: bimResultText,
                      color: Colors.tealAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(
                    child: ResultInput(
                      label: bimResult,
                      color: Colors.white,
                      fontSize: 80.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Expanded(
                    child: ResultInput(
                      label: bimResultInterpretation,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onPress: () {
              Navigator.pushNamed(
                context,
                '/',
              );
            },
          )
        ],
      ),
    );
  }
}
