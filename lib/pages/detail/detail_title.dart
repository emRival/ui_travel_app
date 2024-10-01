import 'package:flutter/material.dart';
import 'package:ui_slacing_travel_app/models/popular.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    super.key,
    required this.popular,
  });

  final Popular popular;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          popular.name,
          style: const TextStyle(
              fontSize: 34,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold),
        ),
        const Text(
          "Show map",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}