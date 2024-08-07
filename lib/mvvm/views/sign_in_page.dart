import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_session/mvvm/components/custom_button.dart';
import 'package:training_session/mvvm/components/custom_textfield.dart';
import 'package:training_session/mvvm/extension/snack_bar_extension.dart';
import 'package:training_session/mvvm/viewModels/auth_view_model.dart';
import 'package:training_session/mvvm/views/sign_up_page.dart';

import '../requestModels/auth_request.dart';
import '../validator/auth_validator.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final authViewModel = Get.put(AuthViewModel());
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                lblTxt: 'Email',
                hintTxt: 'Enter Email',
                controller: emailController,
              ),
              const SizedBox(height: 24),
              CustomTextField(
                  isPassword: true,
                  lblTxt: 'Password',
                  hintTxt: 'Enter Password',
                  controller: passwordController),
              const SizedBox(height: 24),
              Obx(() {
                return authViewModel.signInObserver.value.maybeWhen(
                    error: (error) =>
                        Text(error, style: const TextStyle(color: Colors.red)),
                    orElse: () => const SizedBox());
              }),
              Obx(() {
                return authViewModel.signInObserver.value.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () => CustomButton(
                          text: "Sign In",
                          onPressed: () {
                            _onLogin(context);
                          },
                          buttonColor: Colors.lightBlueAccent,
                          borderRadius: 12,
                        ));
              }),
              const SizedBox(height: 24),
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
                    },
                  ),
                  const Text('By accepting, I accept the',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text('Terms & Conditions',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("IF You Don't have Account?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    const SizedBox(width: 4),
                    InkWell(
                      onTap: () {
                        Get.to(() => const SignUpPage());
                      },
                      child: const Text("SignUp",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.lightBlue)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onLogin(BuildContext context) async {
    final email = emailController.text;
    final password = passwordController.text;
    final request = SignInRequest(
      email: email,
      password: password,
    );
    String? error = AuthValidator().signInValidator(request);
    if (error != null) {
      Get.showSnackBar(title: 'Failed', message: error);
      return;
    }
    if (!_isChecked) {
      Get.showSnackBar(
          title: 'Failed', message: 'Please accept the terms and conditions.');
      return;
    }
    authViewModel.signInAction(request);
  }
}
