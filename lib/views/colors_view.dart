import 'package:flutter/material.dart';
import 'package:lingo_licht_app/assets.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/models/word_model.dart';
import 'package:lingo_licht_app/widgets/custom_pages_app_bar.dart';
import 'package:lingo_licht_app/widgets/info_container_with_image.dart';
import 'package:lingo_licht_app/widgets/vocabulary_list.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});

  static const id = "ColorsView";

  final List<WordModel> colors = const [
    WordModel(
      image: Assets.imagesColorsBlue,
      textInEnglish: 'Blue',
      textInGerman: 'Blau',
      sound: Assets.soundsColorsBlau,
    ),
    WordModel(
      image: Assets.imagesColorsBlack,
      textInEnglish: 'Black',
      textInGerman: 'Schwarz',
      sound: Assets.soundsColorsSchwarz,
    ),
    WordModel(
      image: Assets.imagesColorsBrown,
      textInEnglish: 'Brown',
      textInGerman: 'Braun',
      sound: Assets.soundsColorsBraun,
    ),
    WordModel(
      image: Assets.imagesColorsYellow,
      textInEnglish: 'Yellow',
      textInGerman: 'Gelb',
      sound: Assets.soundsColorsGelb,
    ),
    WordModel(
      image: Assets.imagesColorsGray,
      textInEnglish: 'Gray',
      textInGerman: 'Grau',
      sound: Assets.soundsColorsGrau,
    ),
    WordModel(
      image: Assets.imagesColorsGreen,
      textInEnglish: 'Green',
      textInGerman: 'Grün',
      sound: Assets.soundsColorsGrun,
    ),
    WordModel(
      image: Assets.imagesColorsRed,
      textInEnglish: 'Red',
      textInGerman: 'Rot',
      sound: Assets.soundsColorsRot,
    ),
    WordModel(
      image: Assets.imagesColorsWhite,
      textInEnglish: 'White',
      textInGerman: 'Weiß',
      sound: Assets.soundsColorsWeis,
    ),
    WordModel(
      image: Assets.imagesColorsOrange,
      textInEnglish: 'Orange',
      textInGerman: 'Orange',
      sound: Assets.soundsColorsOrange,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          CustomPagesAppBar(pageName: kCategories["ColorsCategory"]!.name),
          VocabularyList(
            color: kCategories["ColorsCategory"]!.color,
            listLength: colors.length,
            itemBuilder: (context, index) => InfoContainerWithImage(
              word: colors[index],
              color: kCategories["ColorsCategory"]!.color,
            ),
          ),
        ],
      ),
    );
  }
}
