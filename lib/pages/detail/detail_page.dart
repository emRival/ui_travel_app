import 'package:flutter/material.dart';

import 'package:ui_slacing_travel_app/models/popular.dart';
import 'package:ui_slacing_travel_app/pages/detail/detail_facilities.dart';
import 'package:ui_slacing_travel_app/pages/detail/detail_header.dart';
import 'package:ui_slacing_travel_app/pages/detail/detail_price_book.dart';
import 'package:ui_slacing_travel_app/pages/detail/detail_ratings.dart';
import 'package:ui_slacing_travel_app/pages/detail/detail_readmode.dart';
import 'package:ui_slacing_travel_app/pages/detail/detail_title.dart';
import 'package:ui_slacing_travel_app/pages/home/home_selection_seeall.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.popular});

  final Popular popular;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 55, bottom: 40),
            child: Column(
              children: [
                DetailHeader(popular: popular),
                const SizedBox(
                  height: 24,
                ),
                DetailTitle(popular: popular),
                const SizedBox(
                  height: 6,
                ),
                DetailRatings(popular: popular),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_sharp,
                      color: Color(0xff176FF2),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      popular.location,
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const DetailReadmore(),
                const SizedBox(
                  height: 32,
                ),
                const HomeSectionSeeAll(title: "Facilities", seeAll: false),
                const SizedBox(
                  height: 10,
                ),
                const DetailFacilities(),
                const SizedBox(
                  height: 32,
                ),
                const DetailPriceAndBook()
              ],
            ),
          ),
        ),
      )),
    );
  }
}
