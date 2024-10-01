import 'package:flutter/material.dart';
import 'package:ui_slacing_travel_app/models/category.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final Category category = categories[index];
          return Container(
            margin: const EdgeInsets.only(right: 20),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  category.name,
                  style: TextStyle(
                      color: (category.selected ?? false)
                          ? const Color(0xff176FF2)
                          : const Color(0xffB0B0B0),
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: (category.selected ?? false)
                          ? FontWeight.bold
                          : FontWeight.normal),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

