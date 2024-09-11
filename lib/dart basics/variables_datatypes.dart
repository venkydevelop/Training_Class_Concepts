void main() {
  // var
  var student = "venky";
  print(student);
  var rollNum = 2;
  print(rollNum);

  //final is initialized at runtime.
  final String studentName;
  studentName = "venky";
  print(studentName);

  // const is initialized at compile time.
  const pi = 3.14159;
  print(pi);

  // DataTypes: int,double,string,bool

  // int:Represents integer values. It is used for whole numbers.
  int a = 10;
  int b = 20;

  // Performing arithmetic operations
  int sum = a + b;
  int difference = b - a;
  int product = a * b;

  // Printing the results
  print("Sum: $sum");
  print("Difference: $difference");
  print("Product: $product");

  // Increment and decrement operators
  a++;
  b--;
  print("Incremented a: $a");
  print("Decremented b: $b");

  // double: Represents floating-point values. It is used for decimal numbers.

  double value = 1.7512345;
  print(value);
  print(value.toInt());
  print(value.toString());
  print(value.toStringAsFixed(2));

  double radius = 5.0;

  // Performing arithmetic operations
  double area = pi * radius * radius;
  double circumference = 2 * pi * radius;

  // Printing the results
  print("Area of the circle: $area"); // Output: Area of the circle: 78.53975
  print("Circumference of the circle: $circumference");

  // String:Represents a sequence of characters. Strings are immutable in Dart.

  String name = 'venkat';
  print(name);

  // bool:Represents true or false values.

  bool isStudent = true;
  bool hasGraduated = false;
  print(isStudent);
  print(hasGraduated);

  // Using boolean in conditional statements
  if (isStudent) {
    print('The person is a student.');
  }
  // Using boolean in logical operations
  bool canEnroll = isStudent && !hasGraduated;
  print('Can enroll: $canEnroll');
}
