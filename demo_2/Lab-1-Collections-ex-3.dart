void main() {
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent("Abel", () => 85);
  studentMarks.putIfAbsent("Binyam", () => 90);
  studentMarks.putIfAbsent("Khalid", () => 78);
  studentMarks.putIfAbsent("Ibsa", () => 95);

  print("Student marks:");
  print(studentMarks);

  studentMarks.forEach((name, mark) {
    print("$name: $mark");
  });

  String studentName = "Abel";
  if (studentMarks.containsKey(studentName)) {
    print("$studentName is present in the map.");
  } else {
    print("$studentName is not present in the map.");
  }

  String newStudent = "Heaven";
  int newStudentMark = 88;
  studentMarks.putIfAbsent(newStudent, () => newStudentMark);

  print(studentMarks);
}
