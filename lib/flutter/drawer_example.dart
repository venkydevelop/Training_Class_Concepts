import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training_session/flutter/session_management.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.yellow,
                      child: Text(
                        "V",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Venkatesh",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("venky@gmail.com",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ],
                )),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text(
                "Home",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              onTap: () {
                Get.back();
                Get.to(() => HomePage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text(
                "Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              onTap: () {
                Get.back();
                Get.to(() => const ProfilePage());
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              onTap: () {
                Get.back();
                Get.to(() => SettingPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Logout",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLogin", false);
    prefs.remove("userName");
    prefs.remove("password");
    Get.offAll(() => const SessionManagement());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            ElevatedButton(
                onPressed: () async {
                  await _logout(context);
                },
                child: Text("Logout")),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Profile Page",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.green,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Setting Page",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
