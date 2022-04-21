import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
                    cardChild: cardChildColumn(
                      iconName: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    colour: containerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCardWidget(
                    cardChild: cardChildColumn(
                      iconName: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                    colour: containerColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCardWidget(
              colour: containerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardWidget(
                    colour: containerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCardWidget(
                    colour: containerColor,
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

class cardChildColumn extends StatelessWidget {
  final String text;
  final IconData iconName;
  cardChildColumn({this.text, this.iconName});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18,
          ),
        )
      ],
    );
  }
}

class ReusableCardWidget extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableCardWidget({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
