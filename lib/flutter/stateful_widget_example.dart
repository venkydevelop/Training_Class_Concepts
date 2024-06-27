import 'package:flutter/material.dart';

class StatefulWidgetExample extends StatefulWidget {
  const StatefulWidgetExample({super.key});

  @override
  State<StatefulWidgetExample> createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  String userText = "Stateful Widget Example";
  Color _containerColor = Colors.yellow;
  final nameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: nameTextController,
              ),
              const SizedBox(height: 50),
              Container(
                width: 200,
                height: 200,
                color: _containerColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      userText,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      userText = nameTextController.text;
                      _containerColor = Colors.lightBlue;
                      nameTextController.clear();
                    });
                  },
                  child: Text("Button")),
            ],
          ),
        ),
      ),
    );
  }
}
