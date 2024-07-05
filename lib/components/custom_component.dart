import 'package:flutter/material.dart';

class CustomComponent extends StatelessWidget {
  const CustomComponent(
      {super.key,
      required this.name,
      required this.imageName,
      required this.course});

  final String name;
  final String imageName;
  final String course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        surfaceTintColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(imageName, width: 50, height: 50),
                    SizedBox(width: 10),
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      course,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
