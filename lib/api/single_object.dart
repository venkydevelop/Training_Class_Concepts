import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:training_session/model/api_data_model.dart';

class SingleObject extends StatefulWidget {
  const SingleObject({super.key});

  @override
  State<SingleObject> createState() => _SingleObjectState();
}

class _SingleObjectState extends State<SingleObject> {
  SingleObjectResponse? singleObjectData;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      singleObject();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Object Data"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              singleObjectData?.id ?? "",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Text(singleObjectData?.name ?? ""),
            Text("Price: ${singleObjectData?.data?.price ?? 0}"),
            // ElevatedButton(
            //     onPressed: () {
            //       singleObject();
            //     },
            //     child: Text("Load Data"))
          ],
        ),
      ),
    );
  }

  Future<void> singleObject() async {
    const uri = "https://api.restful-api.dev/objects/7";
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        setState(() {
          singleObjectData = SingleObjectResponse.fromJson(jsonData);
        });
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      print(e);
    }
  }
}
