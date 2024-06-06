import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/login_page.dart';
import 'package:restaurant/principal_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //User log in
          if (snapshot.hasData) {
            return const PrincipalPage();
          }
          //User NOT log in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
