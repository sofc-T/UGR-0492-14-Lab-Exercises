class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rectangle1 = Rectangle(5, 3);

  double area = rectangle1.calculateArea();
  print("Area of the rectangle: $area");

  double perimeter = rectangle1.calculatePerimeter();
  print("Perimeter of the rectangle: $perimeter");
}
