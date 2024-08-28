import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/calculator_logic.dart';

void main() {
  test('Testa operação de adição', () {
    final calculator = CalculatorLogic();

    calculator.buttonPressed("2");
    calculator.buttonPressed("+");
    calculator.buttonPressed("3");
    calculator.buttonPressed("=");

    expect(calculator.output, "5.0");
  });

  test('Testa operação de subtração', () {
    final calculator = CalculatorLogic();

    calculator.buttonPressed("7");
    calculator.buttonPressed("-");
    calculator.buttonPressed("2");
    calculator.buttonPressed("=");

    expect(calculator.output, "5.0");
  });

  test('Testa operação de multiplicação', () {
    final calculator = CalculatorLogic();

    calculator.buttonPressed("3");
    calculator.buttonPressed("x");
    calculator.buttonPressed("4");
    calculator.buttonPressed("=");

    expect(calculator.output, "12.0");
  });

  test('Testa operação de divisão', () {
    final calculator = CalculatorLogic();

    calculator.buttonPressed("8");
    calculator.buttonPressed("/");
    calculator.buttonPressed("2");
    calculator.buttonPressed("=");

    expect(calculator.output, "4.0");
  });

  test('Testa reset', () {
    final calculator = CalculatorLogic();

    calculator.buttonPressed("8");
    calculator.buttonPressed("C");

    expect(calculator.output, "0");
  });
}
