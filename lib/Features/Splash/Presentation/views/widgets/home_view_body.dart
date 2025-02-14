import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_list_view.dart';
import 'horizontal_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                HorizontalListView(),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Best Seller',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: CustomListView(),
          ),
        ],
      ),
    );
  }
}
