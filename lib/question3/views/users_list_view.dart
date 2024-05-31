import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../user/user.dart';
import 'user_details_view.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    loadUserIds();
  }

  void loadUserIds() async {
    String jsonString =
        await rootBundle.loadString('assets/json/question3/usrs.json');
    List<dynamic> jsonData = jsonDecode(jsonString);
    List<Map<String, dynamic>> usersJson =
        List<Map<String, dynamic>>.from(jsonData);
    setState(() {
      users = usersJson.map((map) => User.fromJson(map)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('User ${users[index].id}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailView(
                    userId: users[index].id,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
