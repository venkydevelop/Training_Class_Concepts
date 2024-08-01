import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_session/firebaseFiles/firebase_login.dart';
import 'package:training_session/firebaseFiles/service/auth_service.dart';
import 'package:training_session/mvvm/extension/snack_bar_extension.dart';

class FirebaseSignUp extends StatefulWidget {
  const FirebaseSignUp({super.key});

  @override
  State<FirebaseSignUp> createState() => _FirebaseSignUpState();
}

class _FirebaseSignUpState extends State<FirebaseSignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final firebaseAuthService = FireBaseAuthServices();

  bool isSigningUp = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("SignUp"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      hintText: "Email", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      hintText: "Password", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    signUp();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: isSigningUp
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => const FirebaseLogin());
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp() async {
    setState(() {
      isSigningUp = true;
    });
    String email = _emailController.text;
    String password = _passwordController.text;
    User? user =
        await firebaseAuthService.signUpEmailAndPassword(email, password);
    setState(() {
      isSigningUp = false;
    });
    if (user != null) {
      Get.showSnackBar(
          title: "Success", message: "User is Successfully is Signed Up");
    } else {
      Get.showSnackBar(title: "Error", message: "Error Occured");
    }
  }
}
