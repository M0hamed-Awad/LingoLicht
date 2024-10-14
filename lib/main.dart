import 'package:flutter/material.dart';
import 'package:lingo_licht_app/views/body_parts_view.dart';
import 'package:lingo_licht_app/views/colors_view.dart';
import 'package:lingo_licht_app/views/family_members_view.dart';
import 'package:lingo_licht_app/views/home_view.dart';
import 'package:lingo_licht_app/views/jobs_view.dart';
import 'package:lingo_licht_app/views/numbers_view.dart';
import 'package:lingo_licht_app/views/phrases_view.dart';

void main() {
  runApp(const LingoLicht());
}

class LingoLicht extends StatelessWidget {
  const LingoLicht({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Montserrat"),
        routes: {
          HomeView.id: (context) => const HomeView(),
          ColorsView.id: (context) => const ColorsView(),
          PhrasesView.id: (context) => const PhrasesView(),
          FamilyMembersView.id: (context) => const FamilyMembersView(),
          NumbersView.id: (context) => const NumbersView(),
          BodyPartsView.id: (context) => const BodyPartsView(),
          JobsView.id: (context) => const JobsView(),
        },
        initialRoute: HomeView.id,
      ),
    );
  }
}
