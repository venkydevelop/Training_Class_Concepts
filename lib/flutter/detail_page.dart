import 'package:flutter/material.dart';
import 'package:training_session/model/data_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key,
      required this.userName,
      this.userEmail,
      this.courseName,
      this.data});

  final String userName;
  final String? userEmail;
  final String? courseName;

  final DataModel? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
                border: Border.all()),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(userName,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                  const SizedBox(height: 20),
                  Image.asset(
                    userEmail ?? "",
                    width: 30,
                    height: 30,
                  ),
                  // Text(userEmail ?? 'No Email',
                  //     style: const TextStyle(
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w500,
                  //         fontSize: 18)),
                  const SizedBox(height: 20),
                  Text(courseName ?? "No Course",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                  const SizedBox(height: 20),
                  const Text("I'm Choosed Flutter Course",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
