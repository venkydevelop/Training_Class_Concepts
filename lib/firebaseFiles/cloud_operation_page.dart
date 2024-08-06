import 'package:flutter/material.dart';
import 'package:training_session/firebaseFiles/service/cloud_operation.dart';
import 'package:training_session/model/data_model.dart';

class CloudOperationPage extends StatefulWidget {
  const CloudOperationPage({super.key});

  @override
  State<CloudOperationPage> createState() => _CloudOperationPageState();
}

class _CloudOperationPageState extends State<CloudOperationPage> {
  final uidController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final CloudOperation cloudOperation = CloudOperation();

  String message = "";
  UserDataModel? retrievedUser;

  void addUser() async {
    String uid = uidController.text;
    String name = nameController.text;
    String email = emailController.text;
    UserDataModel user = UserDataModel(uid: uid, name: name, email: email);
    await cloudOperation.addUser(user);
    setState(() {
      message = "User Created Successfully";
      retrievedUser = null;
      uidController.clear();
      nameController.clear();
      emailController.clear();
    });
  }

  void getUser() async {
    String uid = uidController.text;
    UserDataModel? user = await cloudOperation.getUser(uid);
    if (user != null) {
      nameController.text = user.name ?? '';
      emailController.text = user.email ?? '';
      setState(() {
        message = "User Retrieved Successfully";
        retrievedUser = user;
        print(retrievedUser);
      });
    } else {
      setState(() {
        message = "No User Found";
        retrievedUser = null;
      });
    }
  }

  void updateUser() async {
    String uid = uidController.text;
    String name = nameController.text;
    String email = emailController.text;
    UserDataModel user = UserDataModel(uid: uid, name: name, email: email);
    await cloudOperation.updateUser(user);
    setState(() {
      message = "User Updated Successfully";
      retrievedUser = null;
    });
  }

  void deleteUser() async {
    String uid = uidController.text;
    await cloudOperation.deleteUser(uid);
    setState(() {
      message = " User Deleted SuccessFully";
      retrievedUser = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FireStore CRUD Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: uidController,
                decoration: const InputDecoration(labelText: 'User ID'),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      addUser();
                    },
                    child: const Text('Add User'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getUser();
                    },
                    child: const Text('Get User'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      updateUser();
                    },
                    child: const Text('Update User'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      deleteUser();
                    },
                    child: const Text('Delete User'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(message, style: const TextStyle(color: Colors.green)),
              if (retrievedUser != null) ...[
                const SizedBox(height: 16.0),
                const Text('Retrieved User Details:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('UID: ${retrievedUser!.uid}'),
                Text('Name: ${retrievedUser!.name}'),
                Text('Email: ${retrievedUser!.email}'),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
