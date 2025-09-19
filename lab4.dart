import 'dart:math'; 

// Task 1.1
class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void displayInfo() {
    print("Car Information: $year $make $model");
  }
}

// Task 1.2
class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);
}

// Task 1.3
class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    double sum = 0;
    for (var grade in grades) {
      sum += grade;
    }
    return grades.isEmpty ? 0 : sum / grades.length;
  }
}

// Task 1.4
class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print("Error: Not enough money");
    } else {
      balance -= amount;
      print("Withdrew: $amount");
    }
  }
}

// Task 1.5
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;
  double get perimeter => 2 * (width + height);
}

// Task 2.1
enum DaysOfWeek { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void checkDay(DaysOfWeek day) {
  if (day == DaysOfWeek.saturday || day == DaysOfWeek.sunday) {
    print("$day is a weekend");
  } else {
    print("$day is a weekday");
  }
}

// Task 2.2
enum OrderStatus { pending, processing, shipped, delivered, cancelled }

// Task 2.3
enum TrafficLight { red, yellow, green }

String getAction(TrafficLight light) {
  if (light == TrafficLight.red) {
    return "Stop";
  } else if (light == TrafficLight.yellow) {
    return "Caution";
  } else {
    return "Go";
  }
}

// Task 2.4
enum UserRole { admin, editor, guest }

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    return role == UserRole.admin || role == UserRole.editor;
  }
}

// Task 2.5
enum TrafficLightWithTime {
  red(30),
  yellow(5),
  green(45);

  final int durationInSeconds;
  const TrafficLightWithTime(this.durationInSeconds);
}

// Task 3.1
class Vehicle {
  String make;
  String model;

  Vehicle(this.make, this.model);

  void display() {
    print("Vehicle: $make $model");
  }
}

class Car extends Vehicle {
  int doors;

  Car(String make, String model, this.doors) : super(make, model);

  @override
  void display() {
    print("Car: $make $model, Doors: $doors");
  }
}

// Task 3.2
class Animal {
  void makeSound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

// Task 3.3
class Shape {
  String color;

  Shape(this.color);
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color);
}

class Square extends Shape {
  double side;

  Square(String color, this.side) : super(color);
}

// Task 3.4
class Employee {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

// Task 3.5
class LibraryItem {
  String title;
  int id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return "Title: $title, ID: $id";
  }
}

class BookItem extends LibraryItem {
  String author;

  BookItem(String title, int id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Book: $title, Author: $author, ID: $id";
  }
}

class DVD extends LibraryItem {
  String director;

  DVD(String title, int id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "DVD: $title, Director: $director, ID: $id";
  }
}

// Task 4.1
mixin Swimmer {
  void swim() {
    print("Swimming...");
  }
}

class Human with Swimmer {
  String name;
  Human(this.name);
}

class Fish with Swimmer {
  String species;
  Fish(this.species);
}

// Task 4.2
mixin Flyer {
  void fly() {
    print("Taking off!");
  }
}

class Bird with Flyer {
  String name;
  Bird(this.name);
}

class Plane with Flyer {
  String model;
  Plane(this.model);
}

// Task 4.3
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data...");
  }
}

// Task 4.4
mixin Validator {
  bool isEmailValid(String email) {
    return email.contains("@");
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  void check(String email, String password) {
    print("Email valid: ${isEmailValid(email)}");
    print("Password strong: ${isPasswordStrong(password)}");
  }
}

// Task 4.5
mixin Performer {
  void perform() {
    print("Performing...");
  }
}

mixin Musician {
  void playInstrument() {
    print("Playing instrument...");
  }
}

class Artist {
  String name;
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

// Task 5.1
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

// Task 5.2
class Weapon {
  void action() {
    print("Weapon action");
  }
}

class Sword extends Weapon {
  @override
  void action() {
    print("Swinging!");
  }
}

class Bow extends Weapon {
  @override
  void action() {
    print("Firing!");
  }
}

// Task 5.3
class Animal {
  void eat() {
    print("Animal eating");
  }
}

class Lion extends Animal {
  @override
  void eat() {
    print("Eating meat.");
  }
}

class Goat extends Animal {
  @override
  void eat() {
    print("Eating grass.");
  }
}

void feed(Animal animal) {
  animal.eat();
}

// Task 5.4
abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount with Credit Card");
  }
}

class PayPal extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount with PayPal");
  }
}

void processPayment(PaymentMethod method, double amount) {
  method.pay(amount);
}

// Task 5.5
abstract class DataFormatter {
  String format(Map<String, dynamic> data);
}

class JSONFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return data.toString();
  }
}

class KeyValueFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    String result = "";
    data.forEach((key, value) {
      result += "$key: $value\n";
    });
    return result;
  }
}

// Task 6.1
Future<Map<String, dynamic>> fetchUserData() async {
  print("Fetching user data...");
  await Future.delayed(Duration(seconds: 2));
  print("Data fetched!");
  return {"id": 101, "name": "Alice"};
}

// Task 6.2
Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => "Report generated!");
}

// Task 6.3
Future<String> generateReportAsync() async {
  await Future.delayed(Duration(seconds: 1));
  return "Report generated!";
}

// Task 6.4
Future<int> fetchUserId() async {
  await Future.delayed(Duration(seconds: 1));
  return 123;
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return "User name: Alice (ID: $userId)";
}

// Task 6.5
Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return "Config loaded";
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return "Resources loaded";
}

// Task 7.1
void divide(int a, int b) {
  try {
    var result = a ~/ b; // integer division
    print("Result: $result");
  } on IntegerDivisionByZeroException {
    print("Error: Cannot divide by zero.");
  }
}

// Task 7.2
void printElementAt(List list, int index) {
  try {
    print("Element: ${list[index]}");
  } on RangeError {
    print("Error: Invalid index.");
  }
}

// Task 7.3
void parseAge(String input) {
  try {
    int age = int.parse(input);
    print("Age is $age");
  } on FormatException {
    print("Error: Invalid number format.");
  }
}

// Task 7.4
class InvalidInputException implements Exception {
  String message;
  InvalidInputException(this.message);

  @override
  String toString() => "InvalidInputException: $message";
}

void processText(String text) {
  if (text.isEmpty) {
    throw InvalidInputException("Input cannot be empty");
  } else {
    print("Processed text: $text");
  }
}

// Task 7.5
void readDatabase() {
  try {
    print("Reading data from database...");
    // Simulate error
    throw Exception("Database error!");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Database connection closed.");
  }
}

void main() {
  // Task 1.1
  var myCar = Car("Toyota", "Corolla", 2022);
  myCar.displayInfo();

  // Task 1.2
  var book = Book("1984", "George Orwell", 328);
  print("Book: ${book.title}, Author: ${book.author}, Pages: ${book.numberOfPages}");

  // Task 1.3
  var student = Student("Alice", 20, [85.5, 90.0, 78.0]);
  print("Average Grade: ${student.calculateAverageGrade()}");

  // Task 1.4
  var account = BankAccount("12345", "John Doe", 500);
  account.deposit(200);
  account.withdraw(100);
  account.withdraw(700);

  // Task 1.5
  var rect = Rectangle(4, 6);
  print("Rectangle Area: ${rect.area}");
  print("Rectangle Perimeter: ${rect.perimeter}");

  // Task 2.1
  checkDay(DaysOfWeek.monday);
  checkDay(DaysOfWeek.saturday);

  // Task 2.2
  var status = OrderStatus.shipped;
  print("Order status: $status");

  // Task 2.3
  print("Red light means: ${getAction(TrafficLight.red)}");
  print("Yellow light means: ${getAction(TrafficLight.yellow)}");
  print("Green light means: ${getAction(TrafficLight.green)}");

  // Task 2.4
  var user1 = User("Alice", UserRole.admin);
  var user2 = User("Bob", UserRole.guest);
  print("${user1.name} can edit: ${user1.hasEditPermission()}");
  print("${user2.name} can edit: ${user2.hasEditPermission()}");

  // Task 2.5
  for (var light in TrafficLightWithTime.values) {
    print("${light.name} lasts for ${light.durationInSeconds} seconds");
  }

  // Task 3.1
  var myCar = Car("Toyota", "Corolla", 4);
  myCar.display();

  // Task 3.2
  var dog = Dog();
  var cat = Cat();
  dog.makeSound();
  cat.makeSound();

  // Task 3.3
  var circle = Circle("Red", 5);
  var square = Square("Blue", 4);
  print("Circle color: ${circle.color}, radius: ${circle.radius}");
  print("Square color: ${square.color}, side: ${square.side}");

  // Task 3.4
  var emp = Employee("John", 3000);
  var mgr = Manager("Alice", 4000, 1000);
  print("Employee salary: ${emp.calculateSalary()}");
  print("Manager salary: ${mgr.calculateSalary()}");

  // Task 3.5
  var book = BookItem("1984", 1, "George Orwell");
  var dvd = DVD("Inception", 2, "Christopher Nolan");
  print(book.getDetails());
  print(dvd.getDetails());

  // Task 4.1
  var person = Human("Alice");
  var fish = Fish("Goldfish");
  person.swim();
  fish.swim();

  // Task 4.2
  var bird = Bird("Sparrow");
  var plane = Plane("Boeing 747");
  bird.fly();
  plane.fly();

  // Task 4.3
  var service = DataService();
  service.fetchData();

  // Task 4.4
  var signup = UserSignup();
  signup.check("test@mail.com", "mypassword123");

  // Task 4.5
  var dancer = Dancer("Mike");
  var guitarist = Guitarist("John");
  dancer.perform();
  guitarist.perform();
  guitarist.playInstrument();

  // Task 5.1
  var shapes = [Circle(5), Rectangle(4, 6)];
  for (var shape in shapes) {
    print("Area: ${shape.area()}");
  }

  // Task 5.2
  var weapons = [Sword(), Bow()];
  for (var w in weapons) {
    w.action();
  }

  // Task 5.3
  feed(Lion());
  feed(Goat());

  // Task 5.4
  processPayment(CreditCard(), 100);
  processPayment(PayPal(), 50);

  // Task 5.5
  var data = {"name": "Alice", "age": 25};
  var formatters = [JSONFormatter(), KeyValueFormatter()];
  for (var f in formatters) {
    print(f.format(data));
  }

  // Task 6.1
  print("Program started");
  var userData = await fetchUserData();
  print("User Name: ${userData["name"]}");
  print("Program finished\n");

  // Task 6.2
  generateReport().then((result) {
    print(result);
  });

  // Task 6.3
  var report = await generateReportAsync();
  print(report);

  // Task 6.4
  var userId = await fetchUserId();
  var userDetails = await fetchUserDetails(userId);
  print(userDetails);

  // Task 6.5
  var results = await Future.wait([fetchConfiguration(), loadResources()]);
  print(results[0]);
  print(results[1]);
  print("System Ready");

  // Task 7.1
  divide(10, 2);
  divide(10, 0);

  // Task 7.2
  var list = [1, 2, 3];
  printElementAt(list, 1);
  printElementAt(list, 5);

  // Task 7.3
  parseAge("25");
  parseAge("abc");

  // Task 7.4
  try {
    processText("");
  } catch (e) {
    print(e);
  }

  // Task 7.5
  readDatabase();
}
