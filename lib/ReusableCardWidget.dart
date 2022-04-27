import 'package:flutter/material.dart';

enum Gender { male, female }

class ReusableCardWidget extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPressed;
  ReusableCardWidget({@required this.colour, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
