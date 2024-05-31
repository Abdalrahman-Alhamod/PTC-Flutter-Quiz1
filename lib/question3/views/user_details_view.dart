import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ptc_quiz1/question3/helpers/users_manager.dart';

import '../user/user.dart';

class UserDetailView extends StatefulWidget {
  final int userId;

  const UserDetailView({super.key, required this.userId});

  @override
  UserDetailViewState createState() => UserDetailViewState();
}

class UserDetailViewState extends State<UserDetailView> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = UsersManager.getUserById(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: user.image!,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(height: 16.0),
            Text(user.fullname,
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold)),
            Text(user.about!, style: const TextStyle(fontSize: 16.0)),
            Text(user.email!, style: const TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
