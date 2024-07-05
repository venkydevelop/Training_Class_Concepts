import 'package:flutter/material.dart';
import 'package:training_session/flutter/detail_page.dart';

class SimpleList extends StatefulWidget {
  const SimpleList({super.key});

  @override
  State<SimpleList> createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  final List<String> namesList = [
    "Anusha",
    "Malli",
    "Preethi",
    "Bhargavi",
    "Nithin"
  ];
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
        title: const Text("Simple List"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Display Names",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.red)),
          Expanded(
            child: ListView.builder(
                itemCount: namesList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(userName: namesList[index])));
                    },
                    child: ListTile(
                      title: Text(namesList[index]),
                    ),
                  );
                }),
          ),
          const Text("Display Names and Image",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.red)),
          Expanded(
            child: ListView.builder(
                itemCount: namesImageList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                  userName: namesImageList[index]["name"])));
                    },
                    child: ListTile(
                      leading: Image.asset(namesImageList[index]["imagePath"]),
                      title: Text(namesImageList[index]["name"]),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
