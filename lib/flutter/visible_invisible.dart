import 'package:flutter/material.dart';

class VisibleInvisible extends StatefulWidget {
  const VisibleInvisible({super.key});

  @override
  State<VisibleInvisible> createState() => _VisibleInvisibleState();
}

class _VisibleInvisibleState extends State<VisibleInvisible> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visiblity Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
                visible: _isVisible,
                child: Text("Change the Text is Toggled",
                    style: TextStyle(
                        color: _isVisible ? Colors.red : Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18))),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Text(_isVisible ? "Hide Text" : "Show Text"),
            )
          ],
        ),
      ),
    );
  }
}
