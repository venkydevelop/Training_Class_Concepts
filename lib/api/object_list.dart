import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:training_session/model/api_data_model.dart';

class ObjectList extends StatefulWidget {
  const ObjectList({super.key});

  @override
  State<ObjectList> createState() => _ObjectListState();
}

class _ObjectListState extends State<ObjectList> {
  ObjectListModel? userData;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Objects Contains List"),
      ),
      body: ListView.builder(
          itemCount: userData?.data?.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(userData?.data?[index].avatar ?? ''),
                ),
                title: Text(userData?.data?[index].firstName ?? ''),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email Id: ${userData?.data?[index].firstName ?? ''}"),
                  ],
                ),
              ),
            );
          }),
    );
  }

  void getUserData() async {
    const uri = "https://reqres.in/api/users";
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print(jsonData);
        final data = ObjectListModel.fromJson(jsonData);
        print(data);
        setState(() {
          userData = data;
          print(userData);
        });
      } else {
        throw Exception("Unable load data");
      }
    } catch (e) {
      print(e);
    }
  }
}
