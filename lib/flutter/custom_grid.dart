import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:training_session/components/custom_component.dart';
import 'package:training_session/flutter/detail_page.dart';

import '../model/data_model.dart';

class CustomGrid extends StatefulWidget {
  const CustomGrid({super.key});

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  final List<DataModel> studentDetails = [
    DataModel(
      name: "Anusha",
      imagePath: "assets/images/test.png",
      course: "Flutter",
    ),
    DataModel(
      name: "Malli",
      imagePath: "assets/images/test.png",
      course: "iOS",
    ),
    DataModel(
      name: "Preethi",
      imagePath: "assets/images/test.png",
      course: "Android",
    ),
    DataModel(
      name: "Bhargavi",
      imagePath: "assets/images/test.png",
      course: "Web",
    ),
    DataModel(
      name: "Nithin",
      imagePath: "assets/images/test.png",
      course: "Java",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Grid"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemCount: studentDetails.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Get.to(() => DetailPage(
                        userName: studentDetails[index].name ?? '',
                      ));
                },
                child: CustomComponent(data: studentDetails[index]));
          }),
    );
  }
}
