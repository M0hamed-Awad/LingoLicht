import 'package:flutter/material.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/views/body_parts_view.dart';
import 'package:lingo_licht_app/views/colors_view.dart';
import 'package:lingo_licht_app/views/family_members_view.dart';
import 'package:lingo_licht_app/views/jobs_view.dart';
import 'package:lingo_licht_app/views/numbers_view.dart';
import 'package:lingo_licht_app/views/phrases_view.dart';
import 'package:lingo_licht_app/widgets/category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          CategoryItem(
            onTap: () {
              Navigator.pushNamed(context, NumbersView.id);
            },
            categoryName: kCategories["NumbersCategory"]!.name,
            color: kCategories["NumbersCategory"]!.color,
          ),
          CategoryItem(
            onTap: () {
              Navigator.pushNamed(context, FamilyMembersView.id);
            },
            categoryName: kCategories["FamilyMembersCategory"]!.name,
            color: kCategories["FamilyMembersCategory"]!.color,
          ),
          CategoryItem(
            onTap: () {
              Navigator.pushNamed(context, ColorsView.id);
            },
            categoryName: kCategories["ColorsCategory"]!.name,
            color: kCategories["ColorsCategory"]!.color,
          ),
          CategoryItem(
            onTap: () {
              Navigator.pushNamed(context, JobsView.id);
            },
            categoryName: kCategories["JobsCategory"]!.name,
            color: kCategories["JobsCategory"]!.color,
          ),
          CategoryItem(
            onTap: () {
              Navigator.pushNamed(context, BodyPartsView.id);
            },
            categoryName: kCategories["BodyPartsCategory"]!.name,
            color: kCategories["BodyPartsCategory"]!.color,
          ),
          CategoryItem(
            onTap: () {
              Navigator.pushNamed(context, PhrasesView.id);
            },
            categoryName: kCategories["PhrasesCategory"]!.name,
            color: kCategories["PhrasesCategory"]!.color,
          ),
        ],
      ),
    );
  }
}
