import 'package:flutter/material.dart';

class UserInputValidation extends StatefulWidget {
  const UserInputValidation({super.key});

  @override
  State<UserInputValidation> createState() => _UserInputValidationState();
}

class _UserInputValidationState extends State<UserInputValidation> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();

  String name = "";
  String email = "";
  String mobile = "";

  String? validateName(String name) {
    if (name.isEmpty) {
      return "Name is empty";
    } else if (name.length <= 3) {
      return "Name should be greater than 3 letters";
    }
    return null;
  }

  String? validateMobile(String mobile) {
    if (mobile.isEmpty) {
      return "Please Enter Mobile NUmber";
    } else if (mobile.length != 10) {
      return "Please Enter Valid Mobile Number";
    }
    return null;
  }

  String? validateEmail(String email) {
    final RegExp emailValid = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (email.isEmpty) {
      return "Please Enter Email Address";
    } else if (!emailValid.hasMatch(email)) {
      return "Please Enter Valid Email";
    }
    return null;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Input Validations"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Validation",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: mobileController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  hintText: "Mobile", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: validate,
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text(
                    "Validate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            const SizedBox(height: 20),
            if (name.isNotEmpty && email.isNotEmpty && mobile.isNotEmpty)
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.yellow),
                child: Column(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      email,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      mobile,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }

  void validate() {
    setState(() {
      name = nameController.text;
      email = emailController.text;
      mobile = mobileController.text;

      String? nameValidate = validateName(name);
      String? emailValidate = validateEmail(email);
      String? mobileValidate = validateMobile(mobile);

      if (nameValidate != null) {
        showSnackBar(nameValidate);
      } else if (emailValidate != null) {
        showSnackBar(emailValidate);
      } else if (mobileValidate != null) {
        showSnackBar(mobileValidate);
      } else {
        nameController.clear();
        emailController.clear();
        mobileController.clear();
      }
    });
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.red,
    ));
  }
}
