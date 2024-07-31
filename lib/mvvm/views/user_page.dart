import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_session/mvvm/components/fetch_user_component.dart';
import 'package:training_session/mvvm/responseModels/auth_response.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("User list Data"),
      ),
      body: Obx(() {
        return authViewModel.userObserver.value.maybeWhen(
            success: (data) {
              final useList = (data as UsersResponse?)?.data ?? List.empty();
              return useList.isEmpty
                  ? const Text("No Users Found")
                  : MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          itemCount: useList.length,
                          // physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(15.0),
                              child:
                                  FetchUserComponent(userData: useList[index]),
                            );
                          }),
                    );
            },
            init: () => const CircularProgressIndicator(),
            orElse: () => const SizedBox());
      }),
    );
  }
}
