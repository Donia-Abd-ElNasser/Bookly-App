import 'package:booklyapp/Features/Splash/Presentation/views/widgets/custom_text_field.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/search_list_view.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
