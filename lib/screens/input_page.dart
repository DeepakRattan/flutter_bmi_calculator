import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterbmicalculator/components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../calculator_brain.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import '../components/icon_content.dart';
import '../components/round_icon_button.dart';
import 'results_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 19;
  //Color maleCardColor = inActiveCardColor;
  //Color femaleCardColor = inActiveCardColor;

  // 1 = male ,2 = female
  /*void updateColor(Gender selectedGender) {
    // male card pressed
    if (selectedGender == Gender.male) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
        femaleCardColor = activeCardColor;
      }
    } else {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
        maleCardColor = activeCardColor;
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  //colour: maleCardColor,
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: (selectedGender == Gender.male)
                      ? activeCardColor
                      : inActiveCardColor,
                  cardChild: Center(
                    child: IconContentWidget(
                      iconData: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  //colour: femaleCardColor,
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: (selectedGender == Gender.female)
                      ? activeCardColor
                      : inActiveCardColor,
                  cardChild: Center(
                    child: IconContentWidget(
                      iconData: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: numberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),

                  //Customizing slider
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x1FEB1555),
                      inactiveTrackColor: Color(0xFF8D8E98),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      // onChanged Called during a drag when the user is selecting a
                      // new value for the slider by dragging.

                      /* The slider passes the new value to the callback but
                      does not actually change state until the parent widget
                      rebuilds the slider with the new value.
                      If null, the slider will be displayed as disabled.
                      The callback provided to onChanged should update the
                      state of the parent StatefulWidget using the State.setState
                      method, so that the parent gets rebuild .*/
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                        //print(newValue);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: labelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          /*     FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                          ),*/
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          //RoundIconButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          /*     FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                          ),*/
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          //RoundIconButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          //Wrap the container with GestureDetector for user interaction
          BottomButton(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            buttonTitle: 'CALCULATE',
          )

          /*Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              // If we use the BoxDecoration,color property of Container has to be
              // defined inside BoxDecoration
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),*/
          /*Expanded(
              child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                // If we use the BoxDecoration,color property of Container has to be
                // defined inside BoxDecoration
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                // If we use the BoxDecoration,color property of Container has to be
                // defined inside BoxDecoration
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          )),*/
        ],
      ),
      // To change the floating action button theme for this page
      /*floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.purple,
        ),
        child: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
        ),
      ),*/
    );
  }
}
