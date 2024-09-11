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
        title: const Text("Visibility Example"),
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
            const SizedBox(height: 20),
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

//   String _content = 'Click on a text to display content here';
//   Color _contentColor = Colors.black;
//
//   int _selectedIndex = -1;
//
//   void _updateContent(int index, String content, Color color) {
//     setState(() {
//       _selectedIndex = index;
//       _content = content;
//       _contentColor = color;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Dynamic Content Display Example')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () =>
//                     _updateContent(0, 'Content for Text 1', Colors.red),
//                 child: Text(
//                   'Text 1',
//                   style: TextStyle(
//                     color: _selectedIndex == 0 ? Colors.red : Colors.black,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               GestureDetector(
//                 onTap: () =>
//                     _updateContent(1, 'Content for Text 2', Colors.green),
//                 child: Text(
//                   'Text 2',
//                   style: TextStyle(
//                     color: _selectedIndex == 1 ? Colors.green : Colors.black,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               GestureDetector(
//                 onTap: () =>
//                     _updateContent(2, 'Content for Text 3', Colors.blue),
//                 child: Text(
//                   'Text 3',
//                   style: TextStyle(
//                     color: _selectedIndex == 2 ? Colors.blue : Colors.black,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 40),
//               Text(
//                 _content,
//                 style: TextStyle(color: _contentColor, fontSize: 24),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
