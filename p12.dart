import 'dart:io';

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void adjustSalaryByPercentage(double percentage) {
    salary += salary * (percentage / 100);
  }
}

void main() {
  List<Employee> employees = [
    Employee('Alice', 50000),
    Employee('Bob', 60000),
    Employee('Charlie', 70000)
  ];

  print('Enter the percentage to adjust salaries:');
  double adjustmentPercentage = double.parse(stdin.readLineSync()!);

  for (Employee employee in employees) {
    employee.adjustSalaryByPercentage(adjustmentPercentage);
    print('${employee.name} has a new salary of ${employee.salary}');
  }
}