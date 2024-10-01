import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_slacing_travel_app/models/facilities.dart';

class DetailFacilities extends StatelessWidget {
  const DetailFacilities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (index) {
        final Facilities facility = facilities[index];
        return Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            color: const Color.fromARGB(130, 200, 218, 245),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                facility.svgIcon,
                color: const Color.fromARGB(124, 178, 173, 173),
                width: 30,
              ),
            const  SizedBox(
                height: 5,
              ),
              Text(
                facility.name,
                style: const TextStyle(
                    color: Color.fromARGB(124, 178, 173, 173),
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        );
      }),
    );
  }
}
