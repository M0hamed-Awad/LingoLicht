import 'package:just_audio/just_audio.dart';


class WordModel {
  const WordModel({

    this.image,
    required this.textInEnglish,
    required this.textInGerman,
    required this.sound,
  });
  final String? image;
  final String textInEnglish;
  final String textInGerman;
  final String sound;


  playSound() {
    final player = AudioPlayer();
    player.setAsset(sound);
    player.setVolume(100);
    player.play();
  }
}
