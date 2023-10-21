import 'package:calculator/components/ButtonComponent.dart';
import 'package:calculator/components/KeyboardComponent.dart';
import 'package:calculator/components/ResultComponent.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      child: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.amber,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: GridView.count(
                    padding: const EdgeInsets.all(20),
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      ButtonComponent(
                          value: "7",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "8",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "9",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "+",
                          color: Colors.amber,
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "4",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "5",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "6",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "x",
                          color: Colors.amber,
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "1",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "2",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "3",
                          color: const Color.fromARGB(1, 202, 202, 206),
                          radius: 100,
                          onPressed: () => {}),
                      ButtonComponent(
                          value: "-",
                          color: Colors.amber,
                          radius: 100,
                          onPressed: () => {}),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
