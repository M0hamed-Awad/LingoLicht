import 'package:flutter/material.dart';
import 'package:lingo_licht_app/constants.dart';

class CustomPagesAppBar extends StatelessWidget {
  const CustomPagesAppBar({
    super.key,
    required this.pageName,
  });

  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 8,
            offset: const Offset(0, 5),
          )
        ],
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Navigator.canPop(context)
              ? const BackButton(
                  color: Colors.white,
                )
              : const SizedBox(),
          Text(
            pageName,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          const Image(
            image: AssetImage(kLogo),
            fit: BoxFit.cover,
            width: 150,
          ),
        ],
      ),
    );
  }
}