import 'package:flutter/material.dart';
import 'package:ui_slacing_travel_app/models/popular.dart';
import 'package:ui_slacing_travel_app/pages/home/item_card_landscape.dart';

class HomeListRecomennded extends StatelessWidget {
  const HomeListRecomennded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: populars.length,
          itemBuilder: (BuildContext context, int index) {
            final Popular popular = populars[index];
            return ItemCardLandscape(popular: popular);
          },
        ),
      ),
    );
  }
}
