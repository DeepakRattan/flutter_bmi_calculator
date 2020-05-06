import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton({this.onTap, this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: largeButtonStyle,
          ),
        ),
        width: double.infinity,
        color: colorBottomContainer,
        height: 80.0,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(
          top: 10.0,
        ),
      ),
    );
  }
}
