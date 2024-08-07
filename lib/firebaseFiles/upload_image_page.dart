import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:training_session/firebaseFiles/display_image_page.dart';
import 'package:training_session/mvvm/extension/snack_bar_extension.dart';

class UploadImagePage extends StatefulWidget {
  const UploadImagePage({super.key});

  @override
  State<UploadImagePage> createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  double _uploadProgress = 0.0;

  Future<void> pickImage() async {
    final pickImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickImage != null) {
      setState(() {
        _image = File(pickImage.path);
      });
    }
  }

  Future<void> uploadImage() async {
    if (_image != null) {
      final storageRef = FirebaseStorage.instance.ref();
      final imageRef =
          storageRef.child("images/${DateTime.now().toIso8601String()}");
      final uploadTask = imageRef.putFile(_image!);
      uploadTask.snapshotEvents.listen((TaskSnapshot snapShot) {
        setState(() {
          _uploadProgress = snapShot.bytesTransferred / snapShot.totalBytes;
        });
      });

      final snapShot = await uploadTask.whenComplete(() => {});
      final downLoadUrl = await snapShot.ref.getDownloadURL();
      await FirebaseFirestore.instance
          .collection('images')
          .add({'url': downLoadUrl});
      setState(() {
        _uploadProgress = 0.0;
      });
      Get.showSnackBar(title: 'Success', message: 'Image Upload Successfully');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(_image!, height: 200)
                : const Text("No Image Selected"),
            ElevatedButton(
                onPressed: () {
                  pickImage();
                },
                child: const Text("Pick Image")),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  uploadImage();
                },
                child: const Text("Upload Image")),
            if (_uploadProgress > 0.0)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: CircularProgressIndicator(),
              ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const DisplayImagePage());
                },
                child: Text("View Images"))
          ],
        ),
      ),
    );
  }
}
