double divide(double dividend, double divisor) {
  if (divisor == 0) {
    throw ArgumentError("Error: Cannot divide by zero!");
  }
  return dividend / divisor;
}

void main() {
  try {
    print(divide(10, 2));   
    print(divide(10, 0));   
    print(divide(0, 5));
  } catch (e) {
    print(e);
  }
}
