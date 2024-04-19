import 'dart:io';

void main() {
  try {
    print("Enter a number:");
    String userInput = stdin.readLineSync()!;
    int.parse(userInput);
    print("Converted Succesfully");

  } catch (e) {
    print("Error: $e");
    print("Please enter a valid number.");
  }
}
