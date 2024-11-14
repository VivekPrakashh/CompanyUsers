import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:userlist/modal/user.dart';
import 'package:userlist/provider/user_provider.dart';

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
        body: const Center(
          child: Text("No user data available"),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "User Detail",
            style: TextStyle(fontSize: 25),
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: ${widget.user.name}',
                    style: const TextStyle(fontSize: 18, color: Colors.yellow)),
                Text('Username: ${widget.user.username}',
                    style: const TextStyle(fontSize: 18, color: Colors.yellow)),
                Text('Email: ${widget.user.email}',
                    style: const TextStyle(fontSize: 18, color: Colors.yellow)),
                Text('Phone: ${widget.user.phone}',
                    style: const TextStyle(fontSize: 18, color: Colors.yellow)),
                Text(
                    'Address: \n City: ${widget.user.address.city}\n Street: ${widget.user.address.street}\n  Zipcode: ${widget.user.address.zipcode}',
                    style: const TextStyle(fontSize: 18, color: Colors.yellow)),
                Text('Website: ${widget.user.website}',
                    style: const TextStyle(fontSize: 18, color: Colors.yellow)),
                Text(
                    'Company: \n Name: ${widget.user.company.name}\n CatchPhrase: ${widget.user.company.catchPhrase}\n BS: ${widget.user.company.bs}',
                    style: const TextStyle(fontSize: 18, color: Colors.yellow)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
