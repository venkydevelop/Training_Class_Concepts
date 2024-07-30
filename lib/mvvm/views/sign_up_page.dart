import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_session/mvvm/extension/snack_bar_extension.dart';
import 'package:training_session/mvvm/viewModels/auth_view_model.dart';

import '../components/custom_button.dart';
import '../components/custom_textfield.dart';
import '../requestModels/auth_request.dart';
import '../validator/auth_validator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final authViewModel = Get.put(AuthViewModel());
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Image.asset(
                    'assets/images/test.png',
                    fit: BoxFit.contain,
                    width: 160,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomTextField(
                lblTxt: 'Your Name',
                hintTxt: 'Type your full name',
                controller: nameController,
              ),
              const SizedBox(height: 24),
              CustomTextField(
                lblTxt: 'Email',
                hintTxt: 'Type your email',
                controller: emailController,
              ),
              const SizedBox(height: 24),
              CustomTextField(
                lblTxt: 'Password',
                hintTxt: 'Type your password',
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 24),
              Obx(() {
                return authViewModel.signUpObserver.value.maybeWhen(
                    error: (error) =>
                        Text(error, style: const TextStyle(color: Colors.red)),
                    orElse: () => const SizedBox());
              }),
              Obx(() {
                return authViewModel.signUpObserver.value.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () => CustomButton(
                          text: "Sign Up",
                          onPressed: () {
                            _onSignUp();
                          },
                          buttonColor: Colors.lightBlueAccent,
                          borderRadius: 12,
                        ));
              }),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      }),
                  const SizedBox(width: 10),
                  const Text('By accepting, I accept the',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text('Terms & Conditions',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSignUp() async {
    final name = nameController.text;
    final emailId = emailController.text;
    final password = passwordController.text;
    final request =
        SignUpRequest(name: name, email: emailId, password: password);
    String? error = AuthValidator().signUpValidator(request);
    if (error != null) {
      Get.showSnackBar(title: 'Failed', message: error);
      return;
    }
    if (!_isChecked) {
      Get.showSnackBar(
          title: 'Failed', message: 'Please accept the terms and conditions.');
      return;
    }
    authViewModel.signUpAction(request);
  }
}
