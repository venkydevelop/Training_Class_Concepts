import 'package:flutter/material.dart';
import 'package:training_session/components/custom_component.dart';
import 'package:training_session/flutter/detail_page.dart';

class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  final List<dynamic> studentDetails = [
    {
      "name": "Anusha",
      "imagePath": "assets/images/test.png",
      "Course": "Flutter"
    },
    {"name": "Malli", "imagePath": "assets/images/test.png", "Course": "iOS"},
    {
      "name": "Preethi",
      "imagePath": "assets/images/test.png",
      "Course": "Android"
    },
    {
      "name": "Bhargavi",
      "imagePath": "assets/images/test.png",
      "Course": "Web"
    },
    {"name": "Nithin", "imagePath": "assets/images/test.png", "Course": "Java"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom List"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text("Student Course Details",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: studentDetails.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                    userName: studentDetails[index]["name"],
                                    userEmail: studentDetails[index]
                                        ["imagePath"],
                                    courseName: studentDetails[index]["Course"],
                                  )));
                    },
                    child: CustomComponent(
                        name: studentDetails[index]["name"],
                        imageName: studentDetails[index]["imagePath"],
                        course: studentDetails[index]["Course"]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
