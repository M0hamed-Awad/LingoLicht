import 'package:flutter/material.dart';

class VocabularyListWithoutImage extends StatelessWidget {
  const VocabularyListWithoutImage({
    super.key,
    required this.listLength,
    required this.itemBuilder,
  });

  final int listLength;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: listLength,
        itemBuilder: itemBuilder,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.transparent,
          height: 6,
          thickness: 6,
        ),
      ),
    );
  }
}
