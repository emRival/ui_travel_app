import 'package:flutter/material.dart';
import 'package:ui_slacing_travel_app/models/popular.dart';
import 'package:ui_slacing_travel_app/pages/home/item_card.dart';

class HomeListPopular extends StatelessWidget {
  const HomeListPopular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 240,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: populars.length,
          itemBuilder: (BuildContext context, int index) {
            final Popular popular = populars[index];
            return ItemCard(popular: popular);
          },
        ),
      ),
    );
  }
}
