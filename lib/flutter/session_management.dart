import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training_session/flutter/bottom_navigation.dart';

class SessionManagement extends StatefulWidget {
  const SessionManagement({super.key});

  @override
  State<SessionManagement> createState() => _SessionManagementState();
}

class _SessionManagementState extends State<SessionManagement> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isLogin = false;

  Future<void> _login(BuildContext context) async {
    final userName = userNameController.text;
    final password = passwordController.text;

    if (userName.isEmpty && password.isEmpty) {
      Get.snackbar("Failed", "Please enter userName and Password",
          backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
      return;
    }
    if (userName.length < 6 && password.length < 6) {
      Get.snackbar("Failed",
          "Please enter userName and Password must be greater than 6 characters",
          backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
      return;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLogin", true);
    prefs.setString("userName", userName);
    prefs.setString("password", password);
    Get.offAll(() => const BottomNavigation());
  }

  Future<void> _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoginIn = prefs.getBool("isLogin") ?? false;
    if (isLoginIn) {
      String? userName = prefs.getString("userName");
      String? password = prefs.getString("password");

      if (userName != null && password != null) {
        userNameController.text = userName;
        passwordController.text = password;
      }
    }
    setState(() {
      _isLogin = isLoginIn;
    });
  }

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return _isLogin
        ? const BottomNavigation()
        : Scaffold(
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text("Login",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ),
                    const SizedBox(height: 20),
                    const Text("UserName",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    const SizedBox(height: 10),
                    TextField(
                      controller: userNameController,
                      decoration: const InputDecoration(
                          hintText: "UserName",
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 20),
                    const Text("Password",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    const SizedBox(height: 10),
                    TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () async {
                            await _login(context);
                          },
                          child: const Text("Login",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green))),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
