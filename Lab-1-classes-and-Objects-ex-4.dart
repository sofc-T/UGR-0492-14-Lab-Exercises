class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product product1 = Product("Phone", 500, 2);

  double totalCost = product1.calculateTotalCost();
  print("Total cost of ${product1.name}: $totalCost");
}
