import 'package:flutter/material.dart';

class VocabularyList extends StatelessWidget {
  const VocabularyList({
    super.key,
    required this.listLength,
    required this.itemBuilder,
    required this.color,
  });

  final int listLength;
  final Color color;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: listLength,
        itemBuilder: itemBuilder,
        separatorBuilder: (context, index) => Divider(
          color: color,
          height: 6,
          thickness: 6,
          endIndent: 312,
        ),
      ),
    );
  }
}
