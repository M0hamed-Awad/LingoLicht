import 'package:flutter/material.dart';
import 'package:lingo_licht_app/assets.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/models/word_model.dart';
import 'package:lingo_licht_app/widgets/custom_pages_app_bar.dart';
import 'package:lingo_licht_app/widgets/info_container.dart';
import 'package:lingo_licht_app/widgets/vocabulary_list_without_image.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});

  static const id = "PhrasesView";

  final List<WordModel> phrases = const [
    WordModel(
      textInEnglish: 'Goodbye!',
      textInGerman: 'Auf Wiedersehen!',
      sound: Assets.soundsPhrasesGoodbye,
    ),
    WordModel(
      textInEnglish: 'How are you doing?',
      textInGerman: 'Wie gehts?',
      sound: Assets.soundsPhrasesHowAreYouDoing,
    ),
    WordModel(
      textInEnglish: "I don't understand",
      textInGerman: 'Ich verstehe nicht',
      sound: Assets.soundsPhrasesIDontUnderstand,
    ),
    WordModel(
      textInEnglish: 'Where are you from?',
      textInGerman: 'Woher kommen Sie?',
      sound: Assets.soundsPhrasesWhereAreYouFrom,
    ),
    WordModel(
      textInEnglish: 'Thank you very much!',
      textInGerman: 'Vielen Dank',
      sound: Assets.soundsPhrasesThankYouVeryMuch,
    ),
    WordModel(
      textInEnglish: 'Nice to meet you',
      textInGerman: 'Schön, Sie zu treffen',
      sound: Assets.soundsPhrasesNiceToMeetYou,
    ),
    WordModel(
      textInEnglish: 'See you later',
      textInGerman: 'Bis später',
      sound: Assets.soundsPhrasesSeeYouLater,
    ),
    WordModel(
      textInEnglish: 'What is your name?',
      textInGerman: 'Wie heißen Sie?',
      sound: Assets.soundsPhrasesWhatIsYourName,
    ),
    WordModel(
      textInEnglish: 'What is that?',
      textInGerman: 'Was ist das?',
      sound: Assets.soundsPhrasesWhatIsThat,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          CustomPagesAppBar(pageName: kCategories["PhrasesCategory"]!.name),
          VocabularyListWithoutImage(
            listLength: phrases.length,
            itemBuilder: (context, index) => InfoContainer(
              word: phrases[index],
              color: kCategories["PhrasesCategory"]!.color,
            ),
          ),
        ],
      ),
    );
  }
}
