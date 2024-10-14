import 'package:flutter/material.dart';
import 'package:lingo_licht_app/assets.dart';
import 'package:lingo_licht_app/constants.dart';
import 'package:lingo_licht_app/models/word_model.dart';
import 'package:lingo_licht_app/widgets/custom_pages_app_bar.dart';
import 'package:lingo_licht_app/widgets/info_container_with_image.dart';
import 'package:lingo_licht_app/widgets/vocabulary_list.dart';

class JobsView extends StatelessWidget {
  const JobsView({super.key});

  static const id = "JobsView";

  final List<WordModel> jobs = const [
    WordModel(
      image: Assets.imagesJobsAstronaut,
      textInEnglish: 'Astronaut',
      textInGerman: 'Astronaut',
      sound: Assets.soundsJobsAstronaut,
    ),
    WordModel(
      image: Assets.imagesJobsComputerTechnician,
      textInEnglish: 'Computer Technician',
      textInGerman: 'Informatiker',
      sound: Assets.soundsJobsComputerTechnician,
    ),
    WordModel(
      image: Assets.imagesJobsDoctor,
      textInEnglish: 'Doctor',
      textInGerman: 'Arzt',
      sound: Assets.soundsJobsDoctor,
    ),
    WordModel(
      image: Assets.imagesJobsLawyer,
      textInEnglish: 'Lawyer',
      textInGerman: 'Rechtsanwalt',
      sound: Assets.soundsJobsLawyer,
    ),
    WordModel(
      image: Assets.imagesJobsManager,
      textInEnglish: 'Manager',
      textInGerman: 'Manager',
      sound: Assets.soundsJobsManager,
    ),
    WordModel(
      image: Assets.imagesJobsMechanic,
      textInEnglish: 'Mechanic',
      textInGerman: 'Mechaniker',
      sound: Assets.soundsJobsMechanic,
    ),
    WordModel(
      image: Assets.imagesJobsNurse,
      textInEnglish: 'Nurse',
      textInGerman: 'Krankenschwester',
      sound: Assets.soundsJobsNurse,
    ),
    WordModel(
      image: Assets.imagesJobsPilot,
      textInEnglish: 'Pilot',
      textInGerman: 'Pilot',
      sound: Assets.soundsJobsPilot,
    ),
    WordModel(
      image: Assets.imagesJobsPoliceman,
      textInEnglish: 'Policeman',
      textInGerman: 'Polizist',
      sound: Assets.soundsJobsPoliceman,
    ),
    WordModel(
      image: Assets.imagesJobsReporter,
      textInEnglish: 'Reporter',
      textInGerman: 'Reporter',
      sound: Assets.soundsJobsReporter,
    ),
    WordModel(
      image: Assets.imagesJobsSeller,
      textInEnglish: 'Seller',
      textInGerman: 'Verkäufer',
      sound: Assets.soundsJobsSeller,
    ),
    WordModel(
      image: Assets.imagesJobsSolider,
      textInEnglish: 'Solider',
      textInGerman: 'Soldat',
      sound: Assets.soundsJobsSolider,
    ),
    WordModel(
      image: Assets.imagesJobsTaxiDriver,
      textInEnglish: 'Taxi Driver',
      textInGerman: 'Taxifahrer',
      sound: Assets.soundsJobsTaxiDriver,
    ),
    WordModel(
      image: Assets.imagesJobsTeacher,
      textInEnglish: 'Teacher',
      textInGerman: 'Lehrer',
      sound: Assets.soundsJobsTeacher,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          CustomPagesAppBar(pageName: kCategories["JobsCategory"]!.name),
          VocabularyList(
            color: kCategories["JobsCategory"]!.color,
            listLength: jobs.length,
            itemBuilder: (context, index) => InfoContainerWithImage(
              word: jobs[index],
              color: kCategories["JobsCategory"]!.color,
            ),
          ),
        ],
      ),
    );
  }
}
