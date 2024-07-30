import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_session/mvvm/viewModels/auth_view_model.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final authViewModel = Get.put(AuthViewModel());
  @override
  void initState() {
    super.initState();
    authViewModel.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
