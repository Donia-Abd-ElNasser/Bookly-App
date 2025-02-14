import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white60)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.white24,
            )),
        hintText: 'Search',
        labelText: 'Search',
        labelStyle: const TextStyle(color: Colors.white38),
        hintStyle: const TextStyle(color: Colors.white54),
        suffixIcon: IconButton(
          onPressed: () {
            // GoRouter.of(context).push(AppRoutes.kSearchView);
          },
          icon: const Opacity(
              opacity: 0.7,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
              )),
        ),
      ),
    );
  }
}
