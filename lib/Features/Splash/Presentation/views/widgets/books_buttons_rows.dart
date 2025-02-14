import 'package:flutter/material.dart';

import '../../../../../core/custom_button.dart';

class BooksButtonRow extends StatelessWidget {
  const BooksButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Expanded(
            child: CustomButton(
              text: r'19.9$',
                color: Colors.black,
                backGround: Colors.white,
                borderRadius: BorderRadius.circular(16)),
          ),
          const SizedBox(width: 15,),
           Expanded(
            child: CustomButton(
              text: 'Free Preview',
                color: Colors.white,
                backGround: const Color.fromARGB(255, 45, 131, 114),
                borderRadius: BorderRadius.circular(16)),
          )
      ],
    );
  }
}