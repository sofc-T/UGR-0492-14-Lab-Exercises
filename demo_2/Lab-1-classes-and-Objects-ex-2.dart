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

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  
  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  
  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {
  
  Student student1 = Student("John", 20, "5 Kilo", 101, [85, 90, 75, 88, 92]);

  
  print("Student Object:");
  student1.printObject();
  print("Roll Number: ${student1.rollNumber}");
  print("Marks: ${student1.marks}");

  print("Total Marks: ${student1.calculateTotalMarks()}");
  print("Average Marks: ${student1.calculateAverageMarks()}");
}
