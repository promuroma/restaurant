import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/delayed_animation.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: d_blue,
              size: 30,
            ),
            onPressed: signUserOut,
          ),
        ],
      ),
      body: const Center(
        child: Text('LOOGED IN'),
      ),
    );
  }
}
