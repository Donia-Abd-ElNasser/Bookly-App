import 'package:flutter/material.dart';

import 'horizontal_widget.dart';

class MayLikeList extends StatelessWidget {
  const MayLikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16, top: 10),
            child: HorizontalContainer(),
          );
        },
      ),
    );
  }
}
