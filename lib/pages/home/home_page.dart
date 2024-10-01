import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:flutter/material.dart';

import 'package:ui_slacing_travel_app/pages/home/home_categories.dart';
import 'package:ui_slacing_travel_app/pages/home/home_headers.dart';
import 'package:ui_slacing_travel_app/pages/home/home_list_popular.dart';
import 'package:ui_slacing_travel_app/pages/home/home_list_recommended.dart';
import 'package:ui_slacing_travel_app/pages/home/home_searchbar.dart';
import 'package:ui_slacing_travel_app/pages/home/home_selection_seeall.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int bottomNavIndex = 0;

    return Scaffold(
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 65),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                HomeHeaders(),
                SizedBox(
                  height: 24,
                ),
                HomeSearchBar(),
                SizedBox(
                  height: 24,
                ),
                HomeCategories(),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: HomeSectionSeeAll(
                    title: "Popular",
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                HomeListPopular(),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: HomeSectionSeeAll(
                    title: "Recommended",
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                HomeListRecomennded(),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          activeColor: const Color(0xff176FF2),
          curveSize: 90,
          elevation: 3,
          backgroundColor: Colors.white,
          initialActiveIndex: bottomNavIndex,
          color: Colors.black,
          curve: Curves.bounceOut,
          items: const [
            TabItem(icon: Icons.home_work_rounded),
            TabItem(icon: Icons.favorite),
            TabItem(icon: Icons.person),
          ],
          onTap: (int i) => setState(() => bottomNavIndex = i),
        ));
  }
}
