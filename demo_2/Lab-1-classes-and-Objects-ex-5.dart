import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {

  Circle circle = Circle(5);
  double circleArea = circle.calculateArea();
  print("Area of the circle: $circleArea");

  
  Square square = Square(4);
  double squareArea = square.calculateArea();
  print("Area of the square: $squareArea");
}
