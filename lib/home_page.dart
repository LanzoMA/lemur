import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  final double keypadButtonSize = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextField(
                      controller: controller,
                      readOnly: true,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 16),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text = '';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('AC'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '(';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('('),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += ')';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text(')'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += ' / ';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green[300],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('/'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '7';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('7'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '8';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('8'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '9';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('9'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += ' * ';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green[300],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('*'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '4';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('4'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '5';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('5'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '6';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('6'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += ' - ';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green[300],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('-'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '1';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('1'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '2';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('2'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '3';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('3'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += ' + ';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green[300],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('+'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '0';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('0'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.text += '.';
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('.'),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () {
                          if (controller.text.isNotEmpty) {
                            setState(() {
                              controller.text = controller.text
                                  .substring(0, controller.text.length - 1);
                            });
                          }
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        icon: const Icon(Icons.backspace),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          final expression = controller.text;

                          final tokens = expression.split(' ');

                          var newTokens = <String>[];

                          if (tokens.contains('*') || tokens.contains('/')) {
                            for (var i = 1; i < tokens.length - 1; i++) {
                              if (tokens[i] == '*') {
                                var firstNumber = num.parse(tokens[i - 1]);
                                var secondNumber = num.parse(tokens[i + 1]);
                                var output =
                                    (firstNumber * secondNumber).toString();

                                newTokens.add(output);
                                continue;
                              }

                              if (tokens[i] == '/') {
                                var firstNumber = num.parse(tokens[i - 1]);
                                var secondNumber = num.parse(tokens[i + 1]);
                                var output =
                                    (firstNumber / secondNumber).toString();

                                newTokens.add(output);
                                continue;
                              }

                              if (tokens[i - 1] != '*' ||
                                  tokens[i + 1] != '*' ||
                                  tokens[i - 1] != '/' ||
                                  tokens[i + 1] != '/') {
                                newTokens.add(tokens[i]);
                                continue;
                              }
                            }
                          } else {
                            newTokens = tokens;
                          }

                          num total = num.parse(newTokens[0]);

                          for (var i = 1; i < newTokens.length - 1; i += 2) {
                            if (newTokens[i] == '+') {
                              total += num.parse(newTokens[i + 1]);
                              continue;
                            }

                            if (newTokens[i] == '-') {
                              total -= num.parse(newTokens[i + 1]);
                            }
                          }

                          controller.text = total.toString();
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green[300],
                          foregroundColor: Colors.black,
                          fixedSize: Size.square(keypadButtonSize),
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('='),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
