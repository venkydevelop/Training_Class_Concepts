import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignInApi extends StatefulWidget {
  const SignInApi({super.key});

  @override
  State<SignInApi> createState() => _SignInApiState();
}

class _SignInApiState extends State<SignInApi> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isLoading = false;
  String message = "";

  void togglePassword() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 45,
              child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: "Email", border: OutlineInputBorder())),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: TextField(
                  controller: passwordController,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: const OutlineInputBorder(),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          togglePassword();
                        },
                        child: isPasswordVisible
                            ? const Icon(
                                Icons.visibility,
                                color: Colors.black,
                              )
                            : const Icon(Icons.visibility_off),
                      ))),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    signIn();
                  },
                  child: const Text("Login")),
            ),
            const SizedBox(height: 20),
            if (isLoading)
              const Center(
                  child: CircularProgressIndicator(color: Colors.lightBlue)),
            const SizedBox(height: 20),
            if (message.isNotEmpty) // Display the message (token or error)
              Center(
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void signIn() async {
    const uri = "https://reqres.in/api/login";
    setState(() {
      isLoading = true;
      message = "";
    });
    try {
      final response = await http.post(Uri.parse(uri),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({
            "email": emailController.text,
            "password": passwordController.text
          }));
      if (response.statusCode == 200) {
        setState(() {
          isLoading = false;
        });
        final jsonData = jsonDecode(response.body);
        final token = jsonData["token"];
        setState(() {
          message = "Token: $token";
        });
        print(token);
      } else {
        setState(() {
          isLoading = false;
          message = "Token not found in response.";
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
        message = "Error: ${e.toString()}"; // Display the error message
      });
    }
  }
}
