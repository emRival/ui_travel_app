import 'package:flutter/material.dart';

class HomeSectionSeeAll extends StatelessWidget {
  const HomeSectionSeeAll({
    super.key,
    required this.title,
    this.seeAll = true,
  });

  final String title;
  final bool? seeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
          ),
        ),
        if (seeAll == true)
        const  Text(
            "See all",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Montserrat",
              color: Color(0xff176FF2),
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}
