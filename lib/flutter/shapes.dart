import 'package:flutter/material.dart';

import '../components/customTextFiled.dart';

class ShapesExample extends StatelessWidget {
  const ShapesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "ShapesExample",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.green),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            const SizedBox(height: 10),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: Colors.blue,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomText(
                    hintLabel: 'Email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    hintLabel: 'Password',
                  ),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: const Text("Login")),
                      ElevatedButton(onPressed: () {}, child: const Text("Login")),
                      ElevatedButton(onPressed: () {}, child: const Text("Login")),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
