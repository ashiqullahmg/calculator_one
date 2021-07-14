import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/reusableButtons.dart';

String inputValue = '';
String resultValue = '';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Color blackNorm = Color(0xFF333333);

  bool isZero = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.centerRight,
                            child: Text(
                              resultValue,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.centerRight,
                            child: inputValue == ''
                                ? Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.white,
                                    ),
                                  )
                                : Text(
                                    inputValue,
                                    style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalcButton(
                          onPress: () {
                            setState(() {
                              resultValue = '';
                              inputValue = '';
                            });
                          },
                          buttonText: 'AC',
                          isZero: false,
                          buttonColor: Colors.grey,
                          color: Colors.black),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue = resultValue != '0'
                                ? '-$inputValue'
                                : '-$resultValue';
                          });
                        },
                        buttonText: '+/-',
                        isZero: false,
                        buttonColor: Colors.grey,
                        color: Colors.black,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '%';
                          });
                        },
                        buttonText: '%',
                        isZero: false,
                        buttonColor: Colors.grey,
                        color: Colors.black,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '/';
                          });
                        },
                        buttonText: '÷',
                        isZero: false,
                        buttonColor: Colors.orange,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '7';
                          });
                        },
                        buttonText: '7',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '8';
                          });
                        },
                        buttonText: '8',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '9';
                          });
                        },
                        buttonText: '9',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += 'x';
                          });
                        },
                        buttonText: 'x',
                        isZero: false,
                        buttonColor: Colors.orange,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '4';
                          });
                        },
                        buttonText: '4',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '5';
                          });
                        },
                        buttonText: '5',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '6';
                          });
                        },
                        buttonText: '6',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '-';
                          });
                        },
                        buttonText: '-',
                        isZero: false,
                        buttonColor: Colors.orange,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '1';
                          });
                        },
                        buttonText: '1',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '2';
                          });
                        },
                        buttonText: '2',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '3';
                          });
                        },
                        buttonText: '3',
                        isZero: false,
                        buttonColor: blackNorm,
                      ),
                      CalcButton(
                        onPress: () {
                          setState(() {
                            inputValue += '+';
                          });
                        },
                        buttonText: '+',
                        isZero: false,
                        buttonColor: Colors.orange,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CalcButton(
                          onPress: () {
                            setState(() {
                              inputValue += '0';
                            });
                          },
                          buttonText: '0',
                          isZero: true,
                          buttonColor: blackNorm,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CalcButton(
                          onPress: () {
                            setState(() {
                              inputValue += '.';
                            });
                          },
                          buttonText: '.',
                          isZero: false,
                          buttonColor: blackNorm,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CalcButton(
                          onPress: () {
                            setState(() {
                              calculate();
                            });
                          },
                          buttonText: '=',
                          isZero: false,
                          buttonColor: Colors.orange,
                        ),
                      ),
                    ],
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

void calculate() {
  String finalValue = inputValue;
  finalValue = inputValue.replaceAll('x', '*');
  Parser p = Parser();
  Expression exp = p.parse(finalValue);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
  resultValue = eval.toString();
  print(resultValue);
}
