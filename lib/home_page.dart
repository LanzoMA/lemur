import 'package:flutter/material.dart';
import 'package:lemur/expression_tree.dart';
import 'package:lemur/keypad_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  final double keypadButtonSize = 80.0;

  void evaluateExpression() {
    final expression = controller.text;

    final tokens = expression.split(' ');

    if (tokens.length <= 1) {
      return;
    }

    final expressionTree = ExpressionTree();

    Node? root;

    for (var i = 1; i < tokens.length - 1; i += 2) {
      if (tokens[i] == '*' || tokens[i] == '/') {
        if (root == null) {
          root = Node(tokens[i]);
          root.left = Node(tokens[i - 1]);
          root.right = Node(tokens[i + 1]);
          expressionTree.rootNode = root;
          continue;
        }

        Node newRoot = Node(tokens[i]);

        if (root.right!.data == tokens[i - 1]) {
          newRoot.left = root;
        } else {
          newRoot.left = Node(tokens[i - 1]);
        }

        newRoot.right = Node(tokens[i + 1]);

        root = newRoot;
        expressionTree.rootNode = root;
      }
    }

    for (var i = 1; i < tokens.length - 1; i += 2) {
      if (tokens[i] == '+' || tokens[i] == '-') {
        if (root == null) {
          root = Node(tokens[i]);
          root.left = Node(tokens[i - 1]);
          root.right = Node(tokens[i + 1]);
          expressionTree.rootNode = root;
          continue;
        }

        Node newRoot = Node(tokens[i]);

        if (root.right!.data == tokens[i - 1]) {
          newRoot.left = root;
        } else {
          newRoot.left = Node(tokens[i - 1]);
        }

        newRoot.right = Node(tokens[i + 1]);

        root = newRoot;
        expressionTree.rootNode = root;
      }
    }

    num total = expressionTree.evaluate();
    var totalString = total.toString();

    if (totalString.contains('.')) {
      final decimalString = totalString.split('.')[1];

      // Remove the decimal point if there the number is an integer
      if (int.parse(decimalString) == 0) {
        controller.text = totalString.split('.')[0];
        return;
      }

      // Round to 4 decimal places if the number exceeds 4 decimal places
      if (decimalString.length > 4) {
        controller.text = total.toStringAsFixed(4);
        return;
      }
    }

    controller.text = totalString;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
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
            GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              shrinkWrap: true,
              children: [
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text = '';
                    });
                  },
                  text: 'AC',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '(';
                    });
                  },
                  text: '(',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += ')';
                    });
                  },
                  text: ')',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += ' / ';
                    });
                  },
                  text: '/',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '7';
                    });
                  },
                  text: '7',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '8';
                    });
                  },
                  text: '8',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '9';
                    });
                  },
                  text: '9',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += ' * ';
                    });
                  },
                  text: '*',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '4';
                    });
                  },
                  text: '4',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '5';
                    });
                  },
                  text: '5',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '6';
                    });
                  },
                  text: '6',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += ' - ';
                    });
                  },
                  text: '-',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '1';
                    });
                  },
                  text: '1',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '2';
                    });
                  },
                  text: '2',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '3';
                    });
                  },
                  text: '3',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += ' + ';
                    });
                  },
                  text: '+',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '0';
                    });
                  },
                  text: '0',
                ),
                KeypadButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '.';
                    });
                  },
                  text: '.',
                ),
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
                KeypadButton(
                  onPressed: evaluateExpression,
                  text: '=',
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
