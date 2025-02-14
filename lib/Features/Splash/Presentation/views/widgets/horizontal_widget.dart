import 'package:flutter/material.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        // width: 200,height: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(31, 227, 224, 224),
          image: const DecorationImage(
              image: AssetImage('assets/test_image.png'), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
