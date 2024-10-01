import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Find things to do",
            hintStyle: const TextStyle(
              fontSize: 18,
              fontFamily: "Montserrat",
              color: Color.fromARGB(157, 176, 176, 176),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 17, 5),
              child: SvgPicture.asset(
                "assets/icons/Search.svg",
                color: const Color.fromARGB(157, 176, 176, 176),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
