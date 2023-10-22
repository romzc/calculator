import 'package:flutter/material.dart';

class ResultComponent extends StatefulWidget {
  const ResultComponent({super.key, required this.result, required this.input});

  final String result;
  final String input;

  @override
  State<ResultComponent> createState() => _ResultComponentState();
}

class _ResultComponentState extends State<ResultComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text(widget.input),
    );
  }
}
