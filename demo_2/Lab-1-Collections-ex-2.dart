import 'dart:math';

void main() {
  List<int> randomNumbers = List.generate(20, (index) => Random().nextInt(100));

  print("nums $randomNumbers");

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);

  print("Unique numbers:");
  print("Unique numbers $uniqueNumbers");
}
