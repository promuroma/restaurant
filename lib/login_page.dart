// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/delayed_animation.dart';
import 'package:restaurant/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1500,
                    child: Text(
                      "Connect email address",
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: d_blue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  DelayedAnimation(
                    delay: 2500,
                    child: Text(
                      "It's recommanded to connect your email address for us to better protect your information",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            const LoginForm(),
            const SizedBox(height: 25),
            DelayedAnimation(
              delay: 5500,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: d_blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 125, vertical: 13),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                  child: Text(
                    'CONFIRM',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 90),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 35),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: DelayedAnimation(
                    delay: 6500,
                    child: Text(
                      'SKIP',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            DelayedAnimation(
              delay: 3500,
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 400,
                    ),
                    Container(
                      width: 350,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: d_blue,
                            padding: const EdgeInsets.all(13)),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail_outline_outlined,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('CONFIRM')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 3500,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Your Email',
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                  )),
            ),
          ),
          const SizedBox(height: 30),
          DelayedAnimation(
              delay: 4500,
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )),
              ))
        ],
      ),
    );
  }
}
