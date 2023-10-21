import "package:flutter/material.dart";

class ButtonComponent extends StatelessWidget {
  const ButtonComponent(
      {super.key,
      required this.value,
      required this.color,
      required this.radius,
      required this.onPressed});

  final String value;
  final double radius;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: Colors.white),
      child: ElevatedButton(
        onPressed: () => onPressed(value),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color)),
        child: Center(
          child: Text("$value",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18)),
        ),
      ),
    );
  }
}
