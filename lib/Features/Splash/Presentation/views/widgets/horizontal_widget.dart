import 'package:flutter/material.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        // width: 200,height: 100,
        decoration: BoxDecoration(
        //  color: const Color.fromARGB(31, 227, 224, 224),
          image:  DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
