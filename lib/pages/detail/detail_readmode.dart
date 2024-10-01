
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailReadmore extends StatelessWidget {
  const DetailReadmore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
      style: TextStyle(
          fontSize: 16,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w400,
          color: Colors.black),
      trimMode: TrimMode.Line,
      trimLines: 3,
      colorClickableText: Colors.pink,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      moreStyle: TextStyle(
          color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}
