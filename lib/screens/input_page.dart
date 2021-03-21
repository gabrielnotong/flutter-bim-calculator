import 'package:bmi_calculator/components/bottom_button.dart';

import '../components/rounded_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';

const minWeight = 40;
const minAge = 18;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  double _myHeight = 0.0;
  int _myWeight = minWeight;
  int _myAge = minAge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kAppTitleText,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseAbleCard(
                    color: gender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReuseAbleCard(
                    color: gender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseAbleCard(
              color: kActiveCardColor,
              cardChild: Container(
                padding: EdgeInsets.only(
                  top: 15.0,
                  bottom: 15.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'HEIGHT',
                        style: kIconTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            _myHeight.toStringAsFixed(0),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 1.0,
                          activeTrackColor: Color(0xFFFFFFFF),
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 16.0,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30.0,
                          ),
                        ),
                        child: Slider(
                          value: _myHeight,
                          min: 0,
                          max: 240,
                          onChanged: (cursorValue) {
                            setState(() => _myHeight = cursorValue);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseAbleCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kIconTextStyle,
                        ),
                        Text(
                          _myWeight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: Icons.remove,
                              onClick: () {
                                setState(() {
                                  if (_myWeight > minWeight) {
                                    _myWeight--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedIconButton(
                              icon: Icons.add,
                              onClick: () {
                                setState(() => _myWeight++);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseAbleCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kIconTextStyle,
                        ),
                        Text(
                          _myAge.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: Icons.remove,
                              onClick: () {
                                setState(() {
                                  if (_myAge > minAge) {
                                    _myAge--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedIconButton(
                              icon: Icons.add,
                              onClick: () {
                                setState(() => _myAge++);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: 'CALCULATE',
            onPress: () {
              Navigator.pushNamed(
                context,
                '/results',
              );
            },
          )
        ],
      ),
    );
  }
}
