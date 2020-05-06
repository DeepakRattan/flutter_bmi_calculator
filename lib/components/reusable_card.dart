import 'package:flutter/material.dart';

// Custom Widget
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  // function as a parameter
  final Function onPress;
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
// If we use the BoxDecoration,color property of Container has to be
// defined inside BoxDecoration
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
