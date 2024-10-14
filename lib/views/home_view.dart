import 'package:flutter/material.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/widgets/categories_list.dart';
import 'package:lingo_licht_app/widgets/custom_home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const id = "HomeView";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          CustomHomeAppBar(),
          CategoriesList(),
        ],
      ),
    );
  }
}