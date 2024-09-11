import 'package:flutter/material.dart';

class WidgetsExample extends StatelessWidget {
  const WidgetsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Widgets"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.red,
        leading: const Icon(Icons.add),
        actions:  [
          const Icon(Icons.circle_notifications),
          IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
           },
          )
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
      ),
      body: Column(
        children: [
          const Text(
            "Sample Text",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.w600, fontSize: 30),
            // textAlign: TextAlign.end,
            textDirection: TextDirection.ltr,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          const Icon(Icons.face, size: 100, color: Colors.yellow),
          Image.asset("assets/images/test.png", width: 200, height: 200)
        ],
      ),
    );
  }
}
