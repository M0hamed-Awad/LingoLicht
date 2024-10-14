import 'package:flutter/material.dart';
import 'package:lingo_licht_app/assets.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/models/word_model.dart';
import 'package:lingo_licht_app/widgets/custom_pages_app_bar.dart';
import 'package:lingo_licht_app/widgets/info_container_with_image.dart';
import 'package:lingo_licht_app/widgets/vocabulary_list.dart';

class BodyPartsView extends StatelessWidget {
  const BodyPartsView({super.key});

  static const id = "BodyPartsView";

  final List<WordModel> bodyParts = const [
    WordModel(
      image: Assets.imagesBodyPartsArm,
      textInEnglish: 'Arm',
      textInGerman: 'Arm',
      sound: Assets.soundsBodyPartsArm,
    ),
    WordModel(
      image: Assets.imagesBodyPartsEar,
      textInEnglish: 'Ear',
      textInGerman: 'Ohr',
      sound: Assets.soundsBodyPartsEar,
    ),
    WordModel(
      image: Assets.imagesBodyPartsElbow,
      textInEnglish: 'Elbow',
      textInGerman: 'Ellbogen',
      sound: Assets.soundsBodyPartsElbow,
    ),
    WordModel(
      image: Assets.imagesBodyPartsEye,
      textInEnglish: 'Eye',
      textInGerman: 'Auge',
      sound: Assets.soundsBodyPartsEye,
    ),
    WordModel(
      image: Assets.imagesBodyPartsFinger,
      textInEnglish: 'Finger',
      textInGerman: 'F‌inger',
      sound: Assets.soundsBodyPartsFinger,
    ),
    WordModel(
      image: Assets.imagesBodyPartsFoot,
      textInEnglish: 'Foot',
      textInGerman: 'Fuß',
      sound: Assets.soundsBodyPartsFoot,
    ),
    WordModel(
      image: Assets.imagesBodyPartsHair,
      textInEnglish: 'Hair',
      textInGerman: 'Haar',
      sound: Assets.soundsBodyPartsHair,
    ),
    WordModel(
      image: Assets.imagesBodyPartsHand,
      textInEnglish: 'Hand',
      textInGerman: 'Hand',
      sound: Assets.soundsBodyPartsHand,
    ),
    WordModel(
      image: Assets.imagesBodyPartsHead,
      textInEnglish: 'Head',
      textInGerman: 'Kopf',
      sound: Assets.soundsBodyPartsHead,
    ),
    WordModel(
      image: Assets.imagesBodyPartsLeg,
      textInEnglish: 'Leg',
      textInGerman: 'Bein',
      sound: Assets.soundsBodyPartsLeg,
    ),
    WordModel(
      image: Assets.imagesBodyPartsNose,
      textInEnglish: 'Nose',
      textInGerman: 'Nase',
      sound: Assets.soundsBodyPartsNose,
    ),
    WordModel(
      image: Assets.imagesBodyPartsTongue,
      textInEnglish: 'Tongue',
      textInGerman: 'Zunge',
      sound: Assets.soundsBodyPartsTongue,
    ),
    WordModel(
      image: Assets.imagesBodyPartsTooth,
      textInEnglish: 'Tooth',
      textInGerman: 'Zahn',
      sound: Assets.soundsBodyPartsTooth,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          CustomPagesAppBar(pageName: kCategories["BodyPartsCategory"]!.name),
          VocabularyList(
            color: kCategories["BodyPartsCategory"]!.color,
            listLength: bodyParts.length,
            itemBuilder: (context, index) => InfoContainerWithImage(
              word: bodyParts[index],
              color: kCategories["BodyPartsCategory"]!.color,
            ),
          ),
        ],
      ),
    );
  }
}
