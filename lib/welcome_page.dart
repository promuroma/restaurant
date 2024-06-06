import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/delayed_animation.dart';
// ignore: unused_import
import 'package:restaurant/main.dart';
import 'package:restaurant/social_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: SizedBox(
                  height: 170,
                  child: Image.asset('images/resto_img5.png'),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: SizedBox(
                  height: 400,
                  child: Image.asset('images/resto_img3.png'),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: SizedBox(
                  height: 80,
                  child: Text(
                    "Taste excellence, at home just like in the restaurant !",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: d_blue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SocialPage(),
                          ));
                    },
                    child: const Text('GET STARTED'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
