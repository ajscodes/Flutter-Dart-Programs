import 'dart:io';

void main() {
  // Reading marks for 5 subjects
  List<int> marks = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks of subject $i: ");
    int mark = int.parse(stdin.readLineSync()!);
    marks.add(mark);
  }

  // Calculating total marks and percentage
  int totalMarks = marks.reduce((a, b) => a + b);
  double percentage = (totalMarks / 500) * 100;

  // Determining the class
  String result;
  if (percentage < 35) {
    result = "Fail 😑";
  } else if (percentage >= 35 && percentage < 45) {
    result = "Pass Class 🙂";
  } else if (percentage >= 45 && percentage < 60) {
    result = "Second Class 😊";
  } else if (percentage >= 60 && percentage < 70) {
    result = "First Class 😎";
  } else {
    result = "Distinction 🎉";
  }

  // Printing result
  print("");
  print("Total Marks: $totalMarks");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");
  print("Result: $result");
}
