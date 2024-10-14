import 'package:flutter/material.dart';
import 'package:lingo_licht_app/assets.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/models/word_model.dart';
import 'package:lingo_licht_app/widgets/custom_pages_app_bar.dart';
import 'package:lingo_licht_app/widgets/info_container_with_image.dart';
import 'package:lingo_licht_app/widgets/vocabulary_list.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});

  static const id = "NumbersView";

  final List<WordModel> numbers = const [
    WordModel(
      image: Assets.imagesNumbersOne,
      textInEnglish: 'One',
      textInGerman: 'Eins',
      sound: Assets.soundsNumbersEins,
    ),
    WordModel(
      image: Assets.imagesNumbersTwo,
      textInEnglish: 'Two',
      textInGerman: 'Zwei',
      sound: Assets.soundsNumbersZwei,
    ),
    WordModel(
      image: Assets.imagesNumbersThree,
      textInEnglish: 'Three',
      textInGerman: 'Drei',
      sound: Assets.soundsNumbersDrei,
    ),
    WordModel(
      image: Assets.imagesNumbersFour,
      textInEnglish: 'Four',
      textInGerman: 'Vier',
      sound: Assets.soundsNumbersVier,
    ),
    WordModel(
      image: Assets.imagesNumbersFive,
      textInEnglish: 'Five',
      textInGerman: 'Fünf',
      sound: Assets.soundsNumbersFunf,
    ),
    WordModel(
      image: Assets.imagesNumbersSix,
      textInEnglish: 'Six',
      textInGerman: 'Sechs',
      sound: Assets.soundsNumbersSechs,
    ),
    WordModel(
      image: Assets.imagesNumbersSeven,
      textInEnglish: 'Seven',
      textInGerman: 'Sieben',
      sound: Assets.soundsNumbersSieben,
    ),
    WordModel(
      image: Assets.imagesNumbersEight,
      textInEnglish: 'Eight',
      textInGerman: 'Acht',
      sound: Assets.soundsNumbersAcht,
    ),
    WordModel(
      image: Assets.imagesNumbersNine,
      textInEnglish: 'Nine',
      textInGerman: 'Neun',
      sound: Assets.soundsNumbersNeun,
    ),
    WordModel(
      image: Assets.imagesNumbersTen,
      textInEnglish: 'Ten',
      textInGerman: 'Zehn',
      sound: Assets.soundsNumbersZehn,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          CustomPagesAppBar(pageName: kCategories["NumbersCategory"]!.name),
          VocabularyList(
            color: kCategories["NumbersCategory"]!.color,
            listLength: numbers.length,
            itemBuilder: (context, index) => InfoContainerWithImage(
              word: numbers[index],
              color: kCategories["NumbersCategory"]!.color,
            ),
          ),
        ],
      ),
    );
  }
}
