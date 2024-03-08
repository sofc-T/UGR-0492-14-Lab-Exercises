void main() {
  Map<String, int> shoppingCart = {};
  Map<String, double> productPrices = {
    "Apple": 2.5,
    "Banana": 1.0,
    "Orange": 3.0,
    "Mango": 4.5,
  };

  void addItem(String productName, int quantity) {
    if (productName != null && quantity != null && productPrices.containsKey(productName)) {
      shoppingCart.update(productName, (value) => value + quantity, ifAbsent: () => quantity);
      print("$quantity $productName added to the cart.");
    } else {
      print("Invalid product or quantity.");
    }
  }

  void removeItem(String productName, int quantity) {
    if (productName != null && quantity != null && shoppingCart.containsKey(productName)) {
      if (shoppingCart[productName]! <= quantity) {
        shoppingCart.remove(productName);
        print("$productName removed from the cart.");
      } else {
        shoppingCart[productName] = shoppingCart[productName]! - quantity;
        print("$quantity $productName removed from the cart.");
      }
    } else {
      print("Invalid product or quantity.");
    }
  }

  double calculateTotalPrice(Map<String, int> cart, Map<String, double> prices) {
    double total = 0;
    cart.forEach((productName, quantity) {
      if (prices.containsKey(productName)) {
        total += prices[productName]! * quantity;
      }
    });
    return total;
  }

  addItem("Apple", 3);
  addItem("Banana", 2);
  addItem("Orange", 1);
  addItem("Mango", 4);

  print("\nCurrent cart contents:");
  shoppingCart.forEach((productName, quantity) {
    print("$productName: $quantity");
  });

  double totalPrice = calculateTotalPrice(shoppingCart, productPrices);
  print("\nTotal price: \$${totalPrice.toStringAsFixed(2)}");

  removeItem("Apple", 2);
  removeItem("Banana", 3);

  print("\nUpdated cart contents:");
  shoppingCart.forEach((productName, quantity) {
    print("$productName: $quantity");
  });

  totalPrice = calculateTotalPrice(shoppingCart, productPrices);
  print("\nTotal price after removal: \$${totalPrice.toStringAsFixed(2)}");
}
