import 'package:flutter/material.dart';
import 'package:lingo_licht_app/assets.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/models/word_model.dart';
import 'package:lingo_licht_app/widgets/custom_pages_app_bar.dart';
import 'package:lingo_licht_app/widgets/info_container_with_image.dart';
import 'package:lingo_licht_app/widgets/vocabulary_list.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});

  static const id = "FamilyMembersView";

  final List<WordModel> familyMembers = const [
    WordModel(
      image: Assets.imagesFamilyMembersGrandfather,
      textInEnglish: 'Grandfather',
      textInGerman: 'Der Opa',
      sound: Assets.soundsFamilyMembersGrandfather,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersFather,
      textInEnglish: 'Father',
      textInGerman: 'Der Vater',
      sound: Assets.soundsFamilyMembersFather,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersSon,
      textInEnglish: 'Son',
      textInGerman: 'Der Sohn',
      sound: Assets.soundsFamilyMembersSon,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersGrandmother,
      textInEnglish: 'Grandmother',
      textInGerman: 'Die Oma',
      sound: Assets.soundsFamilyMembersGrandmother,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersMother,
      textInEnglish: 'Mother',
      textInGerman: 'Die Mutter',
      sound: Assets.soundsFamilyMembersMother,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersDaughter,
      textInEnglish: 'Daughter',
      textInGerman: 'Die Tochter',
      sound: Assets.soundsFamilyMembersDaughter,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersUncle,
      textInEnglish: 'Uncle',
      textInGerman: 'Der Onkel',
      sound: Assets.soundsFamilyMembersUncle,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersAunt,
      textInEnglish: 'Aunt',
      textInGerman: 'Die Tante',
      sound: Assets.soundsFamilyMembersAunt,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersCousinFemale,
      textInEnglish: 'Cousin (Female)',
      textInGerman: 'Die Cousin',
      sound: Assets.soundsFamilyMembersCousinFemale,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersCousinMale,
      textInEnglish: 'Cousin (Male)',
      textInGerman: 'Der Cousin',
      sound: Assets.soundsFamilyMembersCousinMale,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersSister,
      textInEnglish: 'Sister',
      textInGerman: 'Die Schwester',
      sound: Assets.soundsFamilyMembersSister,
    ),
    WordModel(
      image: Assets.imagesFamilyMembersBrother,
      textInEnglish: 'Brother',
      textInGerman: 'Der Bruder',
      sound: Assets.soundsFamilyMembersBrother,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          CustomPagesAppBar(
              pageName: kCategories["FamilyMembersCategory"]!.name),
          VocabularyList(
            color: kCategories["FamilyMembersCategory"]!.color,
            listLength: familyMembers.length,
            itemBuilder: (context, index) => InfoContainerWithImage(
              word: familyMembers[index],
              color: kCategories["FamilyMembersCategory"]!.color,
            ),
          ),
        ],
      ),
    );
  }
}
