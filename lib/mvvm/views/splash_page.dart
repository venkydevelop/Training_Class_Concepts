import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_session/mvvm/viewModels/auth_view_model.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final authViewModel = Get.put(AuthViewModel());

  @override
  void initState() {
    super.initState();
    authViewModel.getMain();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
