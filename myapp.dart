//Practical 1

// void main() {
//   List<int> numbers = [4, 2, 5, 8, 1, 9, 8, 5, 1, 7, 3, 2, 2, 2, 10, 20];
//   print("Here is the list of numbers");
//   print(numbers);
//   // Remove duplicates by converting the list to a set, then back to a list
//   List<int> uniqueNumbers = numbers.toSet().toList();
//   print("Here is the list with remove duplicate");
//   print(uniqueNumbers);

//   // Sort the list in ascending order
//   uniqueNumbers.sort();

//   int secondSmallest = uniqueNumbers[1];
//   int secondLargest = uniqueNumbers[uniqueNumbers.length - 2];

//   print('Second smallest number: $secondSmallest');
//   print('Second largest number: $secondLargest');
// }

//Practical 2
// import 'dart:io';

// void main() {
//   // Input: User enters a number
//   stdout.write('Enter a number: ');
//   int number = int.parse(stdin.readLineSync()!);

//   print('Multiplication Table of $number:');

//   // Loop to generate multiplication table up to 20
//   for (int i = 1; i <= 20; i++) {
//     int result = number * i;
//     print('$number x $i = $result');
//   }
// }

//Practical 3
// import 'dart:io';

// class Student {
//   String name;
//   int rollNumber;
//   List<int> marks;

//   Student({required this.name, required this.rollNumber, required this.marks});

//   // Method to calculate average marks
//   double calculateAverageMarks() {
//     if (marks.isEmpty) {
//       return 0.0;
//     }
//     //Sum of all marks
//     //Reduce function is used to calculate the average marks(sum all the marks)
//     int sum = marks.reduce((a, b) => a + b);
//     return sum / marks.length;
//   }

//   // Method to determine grade based on average marks
//   String determineGrade() {
//     double averageMarks = calculateAverageMarks();
//     if (averageMarks >= 90) {
//       return "A";
//     } else if (averageMarks >= 80) {
//       return "B";
//     } else if (averageMarks >= 70) {
//       return "C";
//     } else if (averageMarks >= 60) {
//       return "D";
//     } else {
//       return "F";
//     }
//   }

//   // Method to print student details
//   void printStudentDetails() {
//     print("Name: $name");
//     print("Roll Number: $rollNumber");
//     print("Marks: ${marks.join(", ")}");
//     print("Average Marks: ${calculateAverageMarks().toStringAsFixed(2)}");
//     print("Grade: ${determineGrade()}");
//   }
// }

// void main() {
//   print("Enter student's name:");
//   String name = stdin.readLineSync() ?? "";

//   print("Enter student's roll number:");
//   int rollNumber = int.parse(stdin.readLineSync() ?? "0");

//   print("Enter number of subjects:");
//   int numSubjects = int.parse(stdin.readLineSync() ?? "0");

//   List<int> marks = [];
//   for (int i = 0; i < numSubjects; i++) {
//     print("Enter mark for subject ${i + 1}:");
//     int mark = int.parse(stdin.readLineSync() ?? "0");
//     marks.add(mark);
//   }

//   Student student = Student(name: name, rollNumber: rollNumber, marks: marks);
//   student.printStudentDetails();
// }

//Practical 4
// import 'dart:io';

// void main() {
//   print("Enter a number:");
//   int num = int.parse(stdin.readLineSync() ?? "0");

//   print("Prime numbers up to $num:");
//   for (int i = 2; i <= num; i++) {
//     if (isPrime(i)) {
//       print(i);
//     }
//   }
// }

// bool isPrime(int number) {
//   if (number <= 1) {
//     return false;
//   }
//   for (int i = 2; i * i <= number; i++) {
//     if (number % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }

//Practical 5
import 'dart:io';

class Employee {
  String name;
  int id;
  double salary;

  // Constructor
  Employee({required this.name, required this.id, required this.salary});

  // Method to adjust salary by a percentage
  void adjustSalary(double percentage) {
    salary += salary * (percentage / 100);
  }

  // Method to display employee details
  void displayDetails() {
    print('Employee ID: $id');
    print('Name: $name');
    print('Salary: \$${salary.toStringAsFixed(2)}');
  }
}

void main() {
  List<Employee> employees = [];

  // User input for the number of employees
  stdout.write('Enter the number of employees: ');
  int numEmployees = int.parse(stdin.readLineSync()!);

  // Loop to create and input details for each employee
  for (int i = 0; i < numEmployees; i++) {
    stdout.write('Enter name for Employee ${i + 1}: ');
    String name = stdin.readLineSync()!;

    stdout.write('Enter ID for Employee ${i + 1}: ');
    int id = int.parse(stdin.readLineSync()!);

    stdout.write('Enter salary for Employee ${i + 1}: ');
    double salary = double.parse(stdin.readLineSync()!);

    // Create an Employee object and add it to the list
    employees.add(Employee(name: name, id: id, salary: salary));
  }

  // Loop to update salaries based on user input
  for (int i = 0; i < numEmployees; i++) {
    stdout.write(
        'Enter the percentage to adjust salary for ${employees[i].name}: ');
    double percentage = double.parse(stdin.readLineSync()!);

    // Adjust the salary of the employee
    employees[i].adjustSalary(percentage);

    // Display the updated employee details
    print('\nUpdated details for Employee ${i + 1}:');
    employees[i].displayDetails();
    print('--------------------------------');
  }
}

// 1. Install Flutter SDK
// Windows:
// Download Flutter SDK:

// Visit the Flutter official website and download the latest Flutter SDK.
// Extract the ZIP file:

// Extract the downloaded zip file to a suitable location, e.g., C:\flutter.
// Update PATH:

// Add the Flutter bin directory to your PATH:
// Search for "Environment Variables" in the Start Menu.
// Select the Path variable under "User variables" and click "Edit."
// Click "New" and enter the path to the Flutter bin directory (C:\flutter\bin).

// 2. Install Android Studio
// Download Android Studio:

// Visit the Android Studio official website and download the latest version.
// Install Android Studio:

// Follow the installation instructions specific to your operating system.
// Set Up Android Studio:

// Launch Android Studio and follow the on-screen setup wizard.
// Install the latest Android SDK, Android SDK Command-line Tools, and the Android Virtual Device (AVD) Manager.
// 3. Install Visual Studio Code (VSCode)
// Download VSCode:

// Visit the VSCode official website and download the latest version.
// Install VSCode:

// Follow the installation instructions specific to your operating system.
// Install Flutter and Dart Plugins:

// Open VSCode.
// Go to the Extensions view by clicking on the Extensions icon in the Activity Bar or by pressing Ctrl+Shift+X.
// Search for "Flutter" and click "Install."
// The Dart plugin will be installed automatically with Flutter.
// 4. Set Up Android Emulator
// Open Android Studio:

// Go to the "Tools" menu and select "AVD Manager."
// Create a New Virtual Device:

// Click on "Create Virtual Device."
// Select a device hardware profile (e.g., Pixel 4) and click "Next."
// Select a System Image:

// Choose a system image (e.g., Pie or Q) and click "Next."
// Configure the Emulator:

// Adjust the AVD settings as needed, such as changing the name or adjusting the resolution.
// Click "Finish" to create the emulator.
// Launch the Emulator:

// In the AVD Manager, click the green play button next to the emulator to launch it.
// 5. Verify Installation
// Check Flutter Installation:

// Open a terminal or command prompt and run:
// bash
// Copy code
// flutter doctor
// This command checks your environment and displays a report of the status of your Flutter installation.
// Run Flutter App:

// Open VSCode, and create a new Flutter project (File > New > Project).
// Open the main.dart file and click on the "Run" button or press F5 to run the app on the emulator.
