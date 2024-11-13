import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:signindemo/modal/user.dart';
import 'package:signindemo/provider/user_provider.dart';

class UserDetail extends StatefulWidget {
  UserDetail({super.key, required this.user});
  User user;
  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    // Get the user data from the provider
    final user = Provider.of<UserProvider>(context).users;

    if (user == null) {
      return Scaffold(
        appBar: AppBar(title: Text("Second Screen")),
        body: Center(
          child: Text("No user data available"),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('Name: ${user.name}', style: const TextStyle(fontSize: 20)),
            Text('Email: ${widget.user.email}',
                style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
