import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DisplayImagePage extends StatefulWidget {
  const DisplayImagePage({super.key});

  @override
  State<DisplayImagePage> createState() => _DisplayImagePageState();
}

class _DisplayImagePageState extends State<DisplayImagePage> {
  List<String> _images = [];
  bool _isLoading = true;

  Future<void> fetchImages() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('images').get();
      final images =
          querySnapshot.docs.map((doc) => doc['url'] as String).toList();
      setState(() {
        _images = images;
        _isLoading = false;
      });
    } catch (e) {
      print("Error Fetching Image: $e");
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image List"),
      ),
      body: _isLoading
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: CircularProgressIndicator()),
            )
          : ListView.builder(
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.network(_images[index], width: 300, height: 300),
                );
              }),
    );
  }
}
