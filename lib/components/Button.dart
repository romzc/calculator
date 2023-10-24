import "package:flutter/material.dart";

class Button extends StatelessWidget {
  final String value;
  final double radius;
  final BoxDecoration? boxDecoration;
  final Function onPressed;

  const Button(
      {super.key,
      required this.value,
      this.boxDecoration,
      required this.radius,
      required this.onPressed});

  /// return a number if it is a valid number, otherwise it will return
  /// null.
  double? checkNumber(String value) {
    try {
      double returnValue = double.parse(value);
      return returnValue;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(value),
      child: Container(
        decoration: boxDecoration,
        child: Center(
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
