import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18,
);

class IconContent extends StatelessWidget {
  final String label;
  final IconData iconName;
  IconContent({this.label, this.iconName});
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
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
