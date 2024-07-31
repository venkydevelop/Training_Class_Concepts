import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_session/mvvm/responseModels/auth_response.dart';
import 'package:training_session/mvvm/viewModels/auth_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ModelProfilePage extends StatefulWidget {
  const ModelProfilePage({super.key});

  @override
  State<ModelProfilePage> createState() => _ModelProfilePageState();
}

class _ModelProfilePageState extends State<ModelProfilePage> {
  final authViewModel = Get.put(AuthViewModel());

  @override
  void initState() {
    super.initState();
    authViewModel.fetchUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            return authViewModel.fetchUserObserver.value.when(
                success: (data) {
                  final userData = (data as SignUpResponse);
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userData.data?.name ?? '',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        SizedBox(height: 12),
                        Text(userData.data?.email ?? '',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ],
                    ),
                  );
                },
                error: (message) => Text(message),
                loading: () => const CircularProgressIndicator(),
                init: () => const SizedBox());
          }),
          const SizedBox(height: 20),
          InkWell(
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent,
              onTap: () {
                _openStore();
                print("hello");
              },
              child: const Center(
                child: Text(
                  "Share Our App",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.lightBlueAccent),
                ),
              )),
          const SizedBox(height: 50),
          InkWell(
              onTap: () async {
                await authViewModel.logOut();
              },
              child: const Center(
                  child: Text(
                "Log Out",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Colors.black),
              )))
        ],
      ),
    );
  }

  Future<void> _openStore() async {
    final url = Platform.isIOS
        ? 'https://www.apple.com/in/app-store/'
        : 'https://play.google.com/store/apps?hl=en_IN&gl=US&pli=1';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Get.snackbar('Error launching URL', 'Could not launch $url');
    }
  }
}
