import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_session/components/custom_component.dart';
import 'package:training_session/flutter/detail_page.dart';
import 'package:training_session/model/data_model.dart';

class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
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
        title: Text("Custom List"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
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
                      Get.to(() => DetailPage(
                            userName: studentDetails[index].name ?? '',
                            userEmail: studentDetails[index].imagePath ?? '',
                            courseName: studentDetails[index].course ?? '',
                          ));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => DetailPage(
                      //               userName: studentDetails[index].name ?? '',
                      //               userEmail: studentDetails[index].imagePath ?? '',
                      //               courseName: studentDetails[index].course ?? '',
                      //             )));
                    },
                    child: CustomComponent(data: studentDetails[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
