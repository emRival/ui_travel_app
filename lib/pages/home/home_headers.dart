import 'package:flutter/material.dart';

class HomeHeaders extends StatelessWidget {
  const HomeHeaders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Text.rich(
              TextSpan(children: [
                TextSpan(text: "Explore\n", style: TextStyle(fontSize: 20)),
                TextSpan(
                    text: "Aspen",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              ]),
              style: TextStyle(fontFamily: "Montserrat", color: Colors.black),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_sharp,
                color: Color(0xff176FF2),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Aspen USA",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff176FF2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
