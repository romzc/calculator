import 'package:flutter/material.dart';
import 'package:calculator/components/Button.dart';
import 'package:math_expressions/math_expressions.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  String inputText = "";
  String operationText = "";
  bool solved = false;
  ScrollController scrollController = ScrollController();

  void handlePressButton(String value) {
    if (value == "c") {
      setState(() {
        inputText = "";
      });
    } else if (value == "=") {
      double? result = resolve(inputText);
      setState(() {
        solved = !solved;
        operationText = inputText.toString();
        inputText = result == null ? "" : result.toString();
      });
    } else {
      setState(() {
        if (solved) {
          solved = !solved;
          inputText = value.toString();
        } else {
          inputText += value.toString();
        }
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      });
    }
  }

  double? resolve(String operation) {
    if (operation.isEmpty) return null;
    Parser p = Parser();
    Expression exp = p.parse(operation);

    ContextModel cm = ContextModel();
    double result = exp.evaluate(EvaluationType.REAL, cm);

    return result;
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            color: Colors.blueAccent,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        operationText,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: scrollController,
                  child: Row(
                    children: <Widget>[
                      Text(
                        inputText,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "7",
                          radius: 0,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "8",
                          radius: 0,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "9",
                          radius: 0,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.amber),
                          value: "+",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12), // Espacio vertical de 12 puntos
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "4",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "5",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "6",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.amber),
                          value: "-",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12), // Espacio vertical de 12 puntos
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "1",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "2",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "3",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.amber),
                          value: "*",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12), // Espacio vertical de 12 puntos
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: "0",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.blueGrey),
                          value: ".",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.amber),
                          value: "c",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                      const SizedBox(
                          width: 12), // Espacio horizontal de 12 puntos
                      Expanded(
                        child: Button(
                          boxDecoration:
                              const BoxDecoration(color: Colors.amber),
                          value: "=",
                          radius: 100,
                          onPressed: handlePressButton,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
