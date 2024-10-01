import 'package:flutter/material.dart';
import 'package:ui_slacing_travel_app/pages/home/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // background image
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Aspen",
                  style: TextStyle(
                    fontFamily: "Hiatus",
                    fontSize: 116,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 357,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 32),
                child: Text.rich(
                  textAlign: TextAlign.start,
                  TextSpan(children: [
                    TextSpan(
                        text: "Plan Your\n",
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                    TextSpan(
                        text: "Luxurious\nVacation",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))
                  ]),
                  style: TextStyle(
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 56,
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff176FF2), Color(0xff196EEE)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text("Explore Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
