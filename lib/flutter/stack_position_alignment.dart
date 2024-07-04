import 'package:flutter/material.dart';

class StackPositionAlignment extends StatelessWidget {
  const StackPositionAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              top: 0,
              child: Container(
                color: Colors.red,
              )),
          Center(
            child: Column(
              children: [
                Center(
                  child: Text("OverFlow Text",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text("Login"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
