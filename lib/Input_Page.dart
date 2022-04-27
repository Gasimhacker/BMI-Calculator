import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCardWidget.dart';

const bottomContainerHeight = 80.0;
const inactiveCardColor = Color(0xff111328);
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
Color maleColor;
Color femaleColor;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardWidget(
                    onPressed: () {
                      setState(() {
                        femaleColor = inactiveCardColor;
                        maleColor == activeCardColor
                            ? maleColor = inactiveCardColor
                            : maleColor = activeCardColor;
                      });
                    },
                    cardChild: IconContent(
                      iconName: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: maleColor == null ? inactiveCardColor : maleColor,
                  ),
                ),
                Expanded(
                  child: ReusableCardWidget(
                    onPressed: () {
                      setState(() {
                        maleColor = inactiveCardColor;
                        femaleColor == activeCardColor
                            ? femaleColor = inactiveCardColor
                            : femaleColor = activeCardColor;
                      });
                    },
                    cardChild: IconContent(
                      iconName: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    colour:
                        femaleColor == null ? inactiveCardColor : femaleColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCardWidget(
              colour: inactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardWidget(
                    colour: inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCardWidget(
                    colour: inactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
          )
        ],
      ),
    );
  }
}
