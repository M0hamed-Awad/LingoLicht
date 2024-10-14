import 'package:flutter/material.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/models/word_model.dart';
import 'package:lingo_licht_app/widgets/info_container.dart';

class InfoContainerWithImage extends StatelessWidget {
  const InfoContainerWithImage({
    super.key,
    required this.word,
    required this.color,
  });
  final Color color;
  final WordModel word;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          _buildVocabularyImage(),
          Expanded(
            child: InfoContainer(
              word: word,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildVocabularyImage() {
    return Container(
          decoration: const BoxDecoration(
            color: kBackgroundColor,
          ),
          child: Image.asset(
            word.image!,
          ),
        );
  }
}
