import 'package:flutter/material.dart';

class SimpleGrid extends StatefulWidget {
  const SimpleGrid({super.key});

  @override
  State<SimpleGrid> createState() => _SimpleGridState();
}

class _SimpleGridState extends State<SimpleGrid> {
  final List<dynamic> namesImageList = [
    {"name": "Anusha", "imagePath": "assets/images/test.png"},
    {"name": "Malli", "imagePath": "assets/images/test.png"},
    {"name": "Preethi", "imagePath": "assets/images/test.png"},
    {"name": "Bhargavi", "imagePath": "assets/images/test.png"},
    {"name": "Nithin", "imagePath": "assets/images/test.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Grid"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemCount: namesImageList.length,
          itemBuilder: (context, index) {
            final item = namesImageList[index];
            return GridTile(
                child: Column(
              children: [
                Image.asset(item['imagePath'],
                    width: 30, height: 30, fit: BoxFit.contain),
                SizedBox(height: 20),
                Text(item["name"])
              ],
            ));
          }),
    );
  }
}
