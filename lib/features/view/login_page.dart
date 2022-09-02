import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return  Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Signed in as ${user.email!}'),
          MaterialButton(onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          color: Colors.deepPurple[200],
          child: const Text('Sign Out'),
          )
        ],
      )),
    );
  }
}
