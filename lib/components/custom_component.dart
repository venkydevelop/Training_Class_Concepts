import 'package:flutter/material.dart';
import 'package:training_session/model/data_model.dart';

class CustomComponent extends StatelessWidget {
  const CustomComponent({super.key, this.data
      // required this.name,
      // required this.imageName,
      // required this.course
      });

  // final String name;
  // final String imageName;
  // final String course;

  final DataModel? data;

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
                    Image.asset(data?.imagePath ?? '', width: 30, height: 30),
                    const SizedBox(width: 10),
                    Text(
                      data?.name ?? '',
                      style: const TextStyle(
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
                      data?.course ?? '',
                      style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.arrow_forward_ios)
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
