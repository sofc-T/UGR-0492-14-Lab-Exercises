class Student {
  String name;
  List<double> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0; 
    }
    double total = marks.reduce((value, element) => value + element);
    return total / marks.length;
  }
}

void main() {
  Student student1 = Student('John', [85, 90, 78, 92, 88]);
  print('${student1.name}\'s average mark: ${student1.calculateAverageMark()}');

  Student student2 = Student('Alice', []);
  print('${student2.name}\'s average mark: ${student2.calculateAverageMark()}');
}
