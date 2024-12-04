// void main() {
//   List<int> numbers = [10, 5, 20, 15, 10, 25, 5];

//   // Sort the list in ascending order to find the second smallest and largest
//   numbers.sort();

//   // Find the second smallest number
//   int secondSmallest = numbers.first;
//   for (int i = 1; i < numbers.length; i++) {
//     if (numbers[i] != secondSmallest) {
//       secondSmallest = numbers[i];
//       break;
//     }
//   }

//   // Find the second largest number
//   int secondLargest = numbers.last;
//   for (int i = numbers.length - 2; i >= 0; i--) {
//     if (numbers[i] != secondLargest) {
//       secondLargest = numbers[i];
//       break;
//     }
//   }

//   print("Second smallest number: $secondSmallest");
//   print("Second largest number: $secondLargest");
// }

// import 'dart:io';

class Student {
  String name;
  int rollNumber;
  List<double> marks;

  Student({required this.name, required this.rollNumber, required this.marks});

  double calculateAverageMarks() {
    double sum = 0;
    for (double mark in marks) {
      sum += mark;
    }
    return sum / marks.length;
  }

  String determineGrade(double averageMarks) {
    if (averageMarks >= 90) {
      return "A";
    } else if (averageMarks >= 80) {
      return "B";
    } else if (averageMarks >= 70) {
      return "C";
    } else if (averageMarks >= 60) {
      return "D";
    } else {
      return "F";
    }
  }
}