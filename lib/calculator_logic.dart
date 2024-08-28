class CalculatorLogic {
  String _output = "0";
  String _operand = "";
  String _previousOperand = "";
  String _operation = "";

  String get output => _output;

  void buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _output = "0";
      _operand = "";
      _previousOperand = "";
      _operation = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "x" ||
        buttonText == "/") {
      _previousOperand = _operand;
      _operation = buttonText;
      _output = "0";
    } else if (buttonText == "=") {
      if (_previousOperand.isNotEmpty && _operation.isNotEmpty) {
        double num1 = double.parse(_previousOperand);
        double num2 = double.parse(_operand);

        if (_operation == "+") {
          _output = (num1 + num2).toString();
        } else if (_operation == "-") {
          _output = (num1 - num2).toString();
        } else if (_operation == "x") {
          _output = (num1 * num2).toString();
        } else if (_operation == "/") {
          _output = (num1 / num2).toString();
        }

        _operation = "";
        _previousOperand = "";
      }
    } else {
      if (_output == "0") {
        _output = buttonText;
      } else {
        _output += buttonText;
      }
      _operand = _output;
    }
  }
}
