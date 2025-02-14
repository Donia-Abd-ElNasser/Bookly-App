import 'package:flutter/material.dart';

import 'list_view_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,

      // shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: ListViewContainer(),
        );
      },
    );
  }
}
