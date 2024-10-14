import 'package:flutter/material.dart';
import 'package:lingo_licht_app/models/category_model.dart';

// Logo

const String kLogo = "assets/images/Lingo-Licht-Logo.png";

// Colors

const Color kPrimaryColor = Color(0xff151F30);
const Color kBackgroundColor = Color(0xFFDDD1B6);

// Categories

const Map<String, CategoryModel> kCategories = {
  "NumbersCategory": CategoryModel(
    name: "Numbers",
    color: Color(0xff44803F),
  ),
  "FamilyMembersCategory": CategoryModel(
    name: "Family Members",
    color: Color(0xff103778),
  ),
  "ColorsCategory": CategoryModel(
    name: "Colors",
    color: Color(0xffE3371E),
  ),
  "PhrasesCategory": CategoryModel(
    name: "Phrases",
    color: Color(0xff0593A2),
  ),
  "BodyPartsCategory": CategoryModel(
    name: "Body Parts",
    color: Color(0xffFF7A48),
  ),
  "JobsCategory": CategoryModel(
    name: "Jobs",
    color: Color(0xff146152),
  ),
};
