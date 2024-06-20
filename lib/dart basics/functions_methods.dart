void main() {
  basicFunction();
  add(20, 30);
  greet("venky");
  getEvenNumbers(30);

  Calculator calculator = Calculator();

  // Calling methods of the Calculator class
  int sum = calculator.add(5, 3);
  print("Sum: $sum");

  int difference = calculator.subtract(10, 4);
  print("Difference: $difference");
}

// Functions

// Basic Function

void basicFunction() {
  print("Basic Function");
}

// Function with parameters

void add(int a, int b) {
  int c;
  c = a + b;
  print(c);
}

// Function With Return Type

String greet(String name) {
  return 'Hello, $name!';
}

//Function Returning a List

List<int> getEvenNumbers(int limit) {
  List<int> evenNumbers = [];
  List<int> oddNumbers = [];

  for (int i = 0; i <= limit; i++) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    } else {
      oddNumbers.add(i);
    }
  }
  print(evenNumbers);
  print(oddNumbers);
  return evenNumbers;
}

// Class with a method
class Calculator {
  // Method to add two numbers
  int add(int a, int b) {
    return a + b;
  }

  // Method to subtract two numbers
  int subtract(int a, int b) {
    return a - b;
  }
}
