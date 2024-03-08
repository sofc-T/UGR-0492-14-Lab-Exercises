import 'dart:io';

void main() {
  
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  double sum = addNumbers(num1, num2);
  print("The sum of $num1 and $num2 is: $sum");
}

// Function to add two numbers
double addNumbers(double num1, double num2) {
  return num1 + num2;
}
