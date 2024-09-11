import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/api_data_model.dart';

class ListObjects extends StatefulWidget {
  const ListObjects({super.key});

  @override
  State<ListObjects> createState() => _ListObjectsState();
}

class _ListObjectsState extends State<ListObjects> {
  List<PostDataResponse>? postData;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    postDataMethod();
  }

  void postDataMethod() async {
    const uri = "https://jsonplaceholder.typicode.com/posts";
    setState(() {
      isLoading = true;
    });
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print("jsonData:$jsonData");
        setState(() {
          postData = (jsonData as List)
              .map((data) => PostDataResponse.fromJson(data))
              .toList();
          isLoading = false;
        });
        print("postData: $postData");
      } else {
        throw Exception("Unable load data");
      }
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of Objects"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: postData?.length,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  color: Colors.yellow,
                  child: ListTile(
                    title: Text(
                      "${postData?[index].title}",
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Id:${postData?[index].id}"),
                            Text("UserId:${postData?[index].userId}")
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Body:${postData?[index].body}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.7)),
                        )
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
