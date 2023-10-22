import 'package:calculator/components/ButtonComponent.dart';
import 'package:calculator/components/KeyboardComponent.dart';
import 'package:calculator/components/ResultComponent.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FittedBox(
                fit: BoxFit.fill,
                child: Container(
                  width: double.infinity,
                  color: Colors.amber,
                  child: const Text("Hello"),
                ),
              ),
              Row(
                children: [
                  ButtonComponent(
                    value: "8",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "7",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "9",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "+",
                    color: Colors.amber,
                    radius: 100,
                    onPressed: () => {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonComponent(
                    value: "4",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "5",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "6",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "x",
                    color: Colors.amber,
                    radius: 100,
                    onPressed: () => {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ButtonComponent(
                    value: "1",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "2",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "3",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "-",
                    color: Colors.amber,
                    radius: 100,
                    onPressed: () => {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonComponent(
                    value: "0",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: ".",
                    color: const Color.fromARGB(255, 202, 202, 206),
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "c",
                    color: Colors.amber,
                    radius: 100,
                    onPressed: () => {},
                  ),
                  ButtonComponent(
                    value: "=",
                    color: Colors.amber,
                    radius: 100,
                    onPressed: () => {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
