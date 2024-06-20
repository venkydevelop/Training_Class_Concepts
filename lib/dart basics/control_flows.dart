void main() {
  //A decision making block evaluates a condition before the instructions are executed. Dart supports If, If..else and switch statements.

  int marks = 85;

  if (marks >= 90 && marks <= 100) {
    print("Grade: A+");
  } else if (marks >= 80 && marks < 90) {
    print("Grade: A");
  } else if (marks >= 70 && marks < 80) {
    print("Grade: B");
  } else if (marks >= 60 && marks < 70) {
    print("Grade: C");
  } else if (marks >= 50 && marks < 60) {
    print("Grade: D");
  } else if (marks >= 0 && marks < 50) {
    print("Grade: F");
  } else {
    print("Invalid marks entered.");
  }

  // Switch : Useful when you have a single variable and want to compare it against multiple possible values.

  int day = 4;
  String dayName;

  switch (day) {
    case 1:
      dayName = "Monday";
      break;
    case 2:
      dayName = "Tuesday";
      break;
    case 3:
      dayName = "Wednesday";
      break;
    case 4:
      dayName = "Thursday";
      break;
    case 5:
      dayName = "Friday";
      break;
    case 6:
      dayName = "Saturday";
      break;
    case 7:
      dayName = "Sunday";
      break;
    default:
      dayName = "Invalid day";
  }

  print("Day $day corresponds to $dayName.");

  // Loops are used to repeat a block of code until a specific condition is met. Dart supports for, for..in , while and do..while loops.

  // Simple for Loop

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  // for Loop with a List

  List<String> fruits = ["Apple", "Banana", "Cherry", "Date"];

  // Print each fruit in the list
  for (int i = 0; i < fruits.length; i++) {
    print("Fruit ${i + 1}: ${fruits[i]}");
  }

  // for-in Loop

  List<String> cars = ["Honda", "Toyota", "Ford", "Chevrolet"];

  // Print each car in the list
  for (String car in cars) {
    print("Car: $car");
  }

  // for-each Loop

  List<int> numbers = [1, 2, 3, 4, 5];
  // Print each number in the list
  numbers.forEach((number) => print(number));

  // While loop

  int count = 1;
  while (count <= 5) {
    print(count);
    count++;
  }

  // do- while loop

  do {
    print(count);
    count++;
  } while (count <= 5);
}
