import 'package:flutter/material.dart';
import 'package:training_session/flutter/detail_page.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  String selectedCourse = "Select Course";
  bool isDropDownVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Example"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text("Navigation Data",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 22)),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedCourse,
              icon: Icon(isDropDownVisible
                  ? Icons.arrow_upward
                  : Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                setState(() {
                  // Toggle the dropdown open/close state
                  isDropDownVisible = !isDropDownVisible;
                });
              },
              onChanged: (String? newValue) {
                setState(() {
                  selectedCourse = newValue ?? "";
                  isDropDownVisible = false;
                });
              },
              items: [
                DropdownMenuItem<String>(
                  value: 'Flutter', // Placeholder
                  child: Text('Flutter'),
                ),
                DropdownMenuItem<String>(
                  value: 'Math', // First item
                  child: Text('Math'),
                ),
                DropdownMenuItem<String>(
                  value: 'Science', // Second item
                  child: Text('Science'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  isDropDownVisible = !isDropDownVisible;
                });
              },
              child: InputDecorator(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(12),
                    border: const OutlineInputBorder(),
                    hintText: selectedCourse,
                    hintStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    suffixIcon: isDropDownVisible
                        ? const Icon(
                            Icons.arrow_drop_up_outlined,
                            size: 22,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 22,
                            color: Colors.black,
                          )),
                child: Text(selectedCourse),
              ),
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: isDropDownVisible,
              child: Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all()),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCourse = "Flutter";
                      isDropDownVisible = false;
                    });
                  },
                  child: const Text('Flutter'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                    userName: nameController.text,
                                    userEmail: emailController.text,
                                    courseName: selectedCourse,
                                  )));
                    },
                    child: const Text("Passing Data"))),
          ],
        ),
      ),
    );
  }
}
