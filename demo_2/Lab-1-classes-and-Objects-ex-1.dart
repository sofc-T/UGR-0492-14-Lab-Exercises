class Person {
  String name;
  int age;
  String address;
  
  Person(this.name, this.age, this.address);

  void printObject() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {  
  Person person1 = Person("John", 30, "4 Kilo");
  
  print("Initial Object:");
  person1.printObject();
  
  person1.age = 35;
  person1.address = "5 Kilo";

  print("Modified Object:");
  person1.printObject();
}
