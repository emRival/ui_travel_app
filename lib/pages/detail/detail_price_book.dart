import 'package:flutter/material.dart';

class DetailPriceAndBook extends StatelessWidget {
  const DetailPriceAndBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Price",
              style:  TextStyle(
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "\$999",
              style:  TextStyle(
                  fontSize: 24,
                  fontFamily: "Montserrat",
                  color: Color(0xff2DD7A4),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: 56,
          width: 200,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff176FF2), Color(0xff196EEE)],
            ),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 17, 119, 209).withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Book Now",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
