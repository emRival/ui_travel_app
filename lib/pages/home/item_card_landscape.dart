import 'package:flutter/material.dart';
import 'package:ui_slacing_travel_app/models/popular.dart';

class ItemCardLandscape extends StatelessWidget {
  const ItemCardLandscape({
    super.key,
    required this.popular,
  });

  final Popular popular;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ],

          //shadow
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 142,
                width: 200,
                clipBehavior: Clip.none,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(popular.imageAsset),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(clipBehavior: Clip.none, children: [
                  Positioned(
                    bottom: -20,
                    right: 9,
                    child: Container(
                      clipBehavior: Clip.none,
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xff3A544F),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
                        child: Text(
                          popular.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore ${popular.name}",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.trending_up, color: Colors.blueAccent),
                      SizedBox(width: 5),
                      Text("Hot Deal",
                          style: TextStyle(
                            color:  Color(0xff3A544F),
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
