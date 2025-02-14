import 'package:booklyapp/Features/Splash/Presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: CustomSearchTextField(
              
            ),
          )
        ],
      ),
    ));
  }
}
