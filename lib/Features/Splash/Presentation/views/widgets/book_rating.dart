import 'package:booklyapp/Features/Splash/Presentation/views/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxis = MainAxisAlignment.start});
  final MainAxisAlignment mainAxis;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxis,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '4.8',
          style: Styles.textStyle14,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(123)',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
