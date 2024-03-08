import 'dart:io';

void main() {
  print("Enter your grade (0-100):");
  int grade = int.parse(stdin.readLineSync()!);

  String letterGrade;

  if (grade >= 0 && grade <= 100) {
    switch (grade ~/ 10) {
      case 10:
      case 9:
        letterGrade = 'A';
        break;
      case 8:
        letterGrade = 'B';
        break;
      case 7:
        letterGrade = 'C';
        break;
      case 6:
        letterGrade = 'D';
        break;
      default:
        letterGrade = 'F';
    }
    print("Your letter grade is: $letterGrade");
  } else {
    print("Invalid grade entered. Grade must be between 0 and 100.");
  }
}
