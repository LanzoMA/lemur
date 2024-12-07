class Node {
  final String data;
  Node? left;
  Node? right;

  Node(this.data);
}

class ExpressionTree {
  Node? rootNode;
  static const operators = ['+', '-', '*', '-'];

  ExpressionTree();

  num evaluate([Node? root]) {
    root ??= rootNode;

    if (root == null) {
      throw Exception('Root node uninitialized.');
    }

    num firstNumber = operators.contains(root.left!.data)
        ? evaluate(root.left)
        : num.parse(root.left!.data);
    num secondNumber = operators.contains(root.right!.data)
        ? evaluate(root.right)
        : num.parse(root.right!.data);

    switch (root.data) {
      case '+':
        return firstNumber + secondNumber;
      case '-':
        return firstNumber - secondNumber;
      case '*':
        return firstNumber * secondNumber;
      case '/':
        return (firstNumber / secondNumber);
    }

    throw Exception('Unsupported operator.');
  }
}
