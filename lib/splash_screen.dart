import 'package:flutter/material.dart';
import 'package:userlist/userlist.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Userlist(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.network(
                  'https://img.freepik.com/free-vector/forms-concept-illustration_114360-4797.jpg?t=st=1731557699~exp=1731561299~hmac=ed4f1cb7607588261509205aee72cfaca2fc699f421df614309b539a3d7f37df&w=826',
                  height: 300,
                  width: 300),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("User List",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  color: Colors.grey.shade300,
                )),
          ],
        ),
      ),
    );
  }
}
