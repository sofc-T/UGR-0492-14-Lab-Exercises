import 'dart:io';

void main() {
  double result;
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  switch (operation) {
    case '+':
      result = num1 + num2;
      print("Result: $num1 + $num2 = $result");
      break;
    case '-':
      result = num1 - num2;
      print("Result: $num1 - $num2 = $result");
      break;
    case '*':
      result = num1 * num2;
      print("Result: $num1 * $num2 = $result");
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print("Result: $num1 / $num2 = $result");
      } else {
        print("Cannot divide by zero");
      }
      break;
    default:
      print("Invalid operation");
  }
}
