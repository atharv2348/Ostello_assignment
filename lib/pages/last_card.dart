import 'package:flutter/material.dart';
import 'package:ostello_assignment/utils/sizes.dart';

class LastCard extends StatelessWidget {
  const LastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: Container(
          height: 250,
          width: screenWidth * 0.9,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F7FB),
            border: Border.all(
              color: const Color(0xFFD2EAFE),
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 240),
                    child: const Text(
                      "Guiding you through the maze of choices!",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -40,
                top: 20,
                child: SizedBox(
                  height: 220,
                  child: Image.asset("assets/images/rocket.png"),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: screenWidth * 0.9,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Color(0xFFD2EBFF),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                    child: Center(
                      child: Text(
                        "9k+ Students are using the platform to upgrade there career",
                        style:
                            TextStyle(fontSize: 11, fontFamily: 'Avenir_light'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
