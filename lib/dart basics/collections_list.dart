void main() {
  // List : ordered items in based on index, it will allow the duplicates based on index value

  // Creating a list of numbers
  List<int> numbers = [1, 2, 3, 4, 5];

  // List properties
  print('List: $numbers');
  print('Length: ${numbers.length}');
  print('Is empty: ${numbers.isEmpty}');
  print('Is not empty: ${numbers.isNotEmpty}');
  print('First element: ${numbers.first}');
  print('Last element: ${numbers.last}');
  print('Reversed list: ${numbers.reversed.toList()}');

  for (int i = 0; i < numbers.length; i++) {
    print(i);
  }

  List<String> names = [];

  for (var name in names) {
    print(name);
  }
  names.forEach((element) {
    print(element);
  });
  // List methods
  numbers.add(6);
  print('After adding 6: $numbers');

  numbers.addAll([7, 8, 9]);
  print('After adding [7, 8, 9]: $numbers');

  numbers.insert(0, 0);
  print('After inserting 0 at index 0: $numbers');

  numbers.insertAll(1, [-1, -2, -3]);
  print('After inserting [-1, -2, -3] at index 1: $numbers');

  numbers.remove(0);
  print('After removing 0: $numbers');

  numbers.removeAt(1);
  print('After removing element at index 1: $numbers');

  numbers.removeLast();
  print('After removing the last element: $numbers');

  numbers.clear();
  print('After clearing the list: $numbers');

  // Adding elements back to the list
  numbers.addAll([10, 20, 30, 40, 50]);

  // Finding the index of an element
  int index = numbers.indexOf(30);
  print('Index of 30: $index');

  // Checking if the list contains an element
  bool contains = numbers.contains(20);
  print('Contains 20: $contains');

  // Sorting the list
  numbers.sort();
  print('Sorted list: $numbers');

  // Shuffling the list
  numbers.shuffle();
  print('Shuffled list: $numbers');

  // Getting a sublist
  List<int> sublist = numbers.sublist(1, 4);
  print('Sublist from index 1 to 3: $sublist');

  // Mapping elements to a new list
  List<int> mappedList = numbers.map((num) => num * 2).toList();
  print('Mapped list (each element * 2): $mappedList');

  // Filtering elements with a condition
  List<int> filteredList = numbers.where((num) => num > 20).toList();
  print('Filtered list (elements > 20): $filteredList');

  // Reducing the list to a single value
  int sum = numbers.reduce((a, b) => a + b);
  print('Sum of elements: $sum');
}
