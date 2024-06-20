void main() {
  // Creating a set of numbers
  Set<int> numbers = {1, 2, 3, 4, 5};

  // Set properties
  print('Set: $numbers');
  print('Length: ${numbers.length}');
  print('Is empty: ${numbers.isEmpty}');
  print('Is not empty: ${numbers.isNotEmpty}');
  print('First element: ${numbers.first}');
  print('Last element: ${numbers.last}');

  List<int> setList = numbers.toList();
  for (int i = 0; i < setList.length; i++) {
    print(setList[i]);
  }

  for (var number in numbers) {
    print(number);
  }

  numbers.forEach((item) {
    print(item);
  });

  // Creating a set with a single element
  Set<int> singleElementSet = {10};
  print('Single element: ${singleElementSet.single}');

  // Set methods
  numbers.add(6);
  print('After adding 6: $numbers');

  numbers.addAll({7, 8, 9});
  print('After adding {7, 8, 9}: $numbers');

  numbers.remove(6);
  print('After removing 6: $numbers');

  numbers.clear();
  print('After clearing the set: $numbers');

  // Adding elements back to the set
  numbers.addAll({10, 20, 30, 40, 50});

  // Checking if the set contains an element
  bool contains = numbers.contains(20);
  print('Contains 20: $contains');

  // Set operations
  Set<int> anotherSet = {30, 40, 50, 60, 70};

  Set<int> intersectionSet = numbers.intersection(anotherSet);
  print('Intersection with {30, 40, 50, 60, 70}: $intersectionSet');

  Set<int> unionSet = numbers.union(anotherSet);
  print('Union with {30, 40, 50, 60, 70}: $unionSet');

  Set<int> differenceSet = numbers.difference(anotherSet);
  print('Difference with {30, 40, 50, 60, 70}: $differenceSet');

  // Looking up an element
  int? lookupResult = numbers.lookup(30);
  print('Lookup 30: $lookupResult');

  // Lookup an element that is not in the set
  lookupResult = numbers.lookup(100);
  print('Lookup 100: $lookupResult');
}
