import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  //final String imagePath;
  final String imageName;
  const SquareTile({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        'images/$imageName',
        height: 40,
      ),
    );
  }
}
