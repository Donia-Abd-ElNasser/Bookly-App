import 'package:booklyapp/Features/Splash/Presentation/views/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.color,
      required this.backGround,
      required this.borderRadius,
      required this.text, this.onPressed});
  final Color color, backGround;
  final BorderRadius borderRadius;
  final String text;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        backgroundColor: backGround,
      ),
      child: Text(text,
          style: Styles.textStyle18
              .copyWith(color: color, fontWeight: FontWeight.w600)),
    );
  }
}
