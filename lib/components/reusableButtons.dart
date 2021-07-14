import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final color;
  final buttonColor;
  final textColor;
  final String buttonText;
  final buttonTapped;
  final bool isZero;
  final VoidCallback onPress;
  CalcButton(
      {this.color,
      this.buttonColor,
      this.textColor,
      required this.buttonText,
      this.buttonTapped,
      required this.isZero,
      required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 85,
      child: ElevatedButton(
        child: isZero
            ? Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: color,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              )
            : Text(
                buttonText,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: color,
                  fontSize: 30.0,
                ),
              ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
          shape: isZero
              ? MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                )
              : MaterialStateProperty.all(CircleBorder()),
        ),
        onPressed: onPress,
      ),
    );
  }
}
