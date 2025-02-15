import 'package:booklyapp/Features/Splash/Presentation/views/Styles.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.errMessage});
final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage,style: Styles.textStyle18,);
  }
}