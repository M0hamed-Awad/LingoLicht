import 'package:flutter/material.dart';
import 'package:lingo_licht_app/models/word_model.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.word,
    required this.color,
  });

  final WordModel word;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          _buildTranslatedTextContainer(),
          _buildPlaySoundButton(),
        ],
      ),
    );
  }

  Expanded _buildTranslatedTextContainer() {
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildGermanTranslatedText(),
                _buildEnglishTranslatedText(),
              ],
            ),
          ),
        );
  }

  Text _buildEnglishTranslatedText() {
    return Text(
      word.textInEnglish,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }

  Text _buildGermanTranslatedText() {
    return Text(
      word.textInGerman,
      style: const TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 22,
        color: Colors.white,
      ),
    );
  }

  Padding _buildPlaySoundButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: IconButton(
        tooltip: 'Play Sound',
        onPressed: () {
          word.playSound();
        },
        highlightColor: Colors.white.withOpacity(0.2),
        icon: const Icon(
          Icons.play_arrow,
          size: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
