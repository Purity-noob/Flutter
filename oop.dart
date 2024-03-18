import 'dart:io';

// Interface
abstract class Printable {
  void printDetails();
}

// Class implementing the interface
class Person implements Printable {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  void printDetails() {
    print('Name: $name, Age: $age');
  }
}

// Class overriding an inherited method
class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  @override
  void printDetails() {
    print('Employee Name: $name, Age: $age, Salary: $salary');
  }
}

// Reading data from a file
Future<String> readFile(String file) async {
  var contents = await File(file).readAsString();
  return contents;
}

// Using a loop
void printNumbers(int limit) {
  for (int i = 0; i < limit; i++) {
    print(i);
  }
}

void main() async {
  // Initialize an instance of a class with data from a file
  String fileData = await readFile('person.txt');
  List<String> dataList = fileData.split('\n');
  List<Person> personList = dataList.map((data) {
    List<String> personData = data.split(',');
    return Person(personData[0], int.parse(personData[1]));
  }).toList();

  // Print details of each person
  for (Person person in personList) {
    person.printDetails();
  }

  // Using a loop
  printNumbers(10);

  // Create an instance of the Employee class
  Employee emp = Employee('John Doe', 30, 50000.0);
  emp.printDetails();
}