void main() {
  // list for storing grades
  List<int> gradesList = [85, 92, 78, 65, 88, 72];

  // storing summation of all grades
  int sum = 0;
  for(int singleGrade in gradesList) {
    sum += singleGrade;
  }

  // operate and print average
  double avg = sum/gradesList.length; // double var for possible fractional values
  int avgRounded = avg.toInt(); //rounding avg to the nearest integer

  print("Student's average grade: $avg");
  print("Rounded average: $avgRounded");

  // applying following conditions
  if (avgRounded >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }
}
