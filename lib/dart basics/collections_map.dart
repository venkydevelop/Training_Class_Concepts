void main() {
  // Creating a map of fruits with their colors
  Map<String, String> fruits = {
    'Apple': 'Red',
    'Banana': 'Yellow',
    'Grapes': 'Green',
    'Orange': 'Orange'
  };

  // Map properties
  print('Map: $fruits');
  print('Length: ${fruits.length}');
  print('Is empty: ${fruits.isEmpty}');
  print('Is not empty: ${fruits.isNotEmpty}');
  print('Keys: ${fruits.keys}');
  print('Values: ${fruits.values}');

  List<String> keys = fruits.keys.toList();
  for (int i = 0; i < keys.length; i++) {
    print('${keys[i]}: ${fruits[keys[i]]}');
  }

  for (var entry in fruits.entries) {
    print('${entry.key}: ${entry.value}');
  }

  // Applying a function to each key-value pair
  fruits.forEach((key, value) {
    print('$key is $value');
  });

  // Map methods
  fruits.addAll({'Mango': 'Yellow', 'Blueberry': 'Blue'});
  print('After adding new fruits: $fruits');

  fruits.remove('Banana');
  print('After removing Banana: $fruits');

  // Condition: Remove entries where the value is not 'Red' or 'Yellow'
  fruits.removeWhere((key, value) => value != 'Red' && value != 'Yellow');

  fruits.clear();
  print('After clearing the map: $fruits');

  // Adding elements back to the map
  fruits.addAll({
    'Apple': 'Red',
    'Banana': 'Yellow',
    'Grapes': 'Green',
    'Orange': 'Orange'
  });

  // Checking if the map contains a key
  bool containsKey = fruits.containsKey('Apple');
  print('Contains key "Apple": $containsKey');

  // Checking if the map contains a value
  bool containsValue = fruits.containsValue('Yellow');
  print('Contains value "Yellow": $containsValue');

  // Updating a value for a key
  fruits.update('Apple', (value) => 'Green');
  print('After updating Apple: $fruits');

  // Adding a key-value pair if the key is not already present
  fruits.putIfAbsent('Mango', () => 'Yellow');
  print('After adding Mango: $fruits');

  // Updating all values in the map
  fruits.updateAll((key, value) => value.toUpperCase());
  print('After updating all values: $fruits');
}
