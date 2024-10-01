import 'package:flutter/material.dart';
import 'package:ui_slacing_travel_app/models/popular.dart';

class DetailRatings extends StatelessWidget {
  const DetailRatings({
    super.key,
    required this.popular,
  });

  final Popular popular;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      const  Icon(
          Icons.star,
          color: Color(0xffFFD700),
          size: 16,
        ),
      const  SizedBox(
          width: 5,
        ),
        Text(
          "${popular.rating} (355 Reviewers)",
          style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}