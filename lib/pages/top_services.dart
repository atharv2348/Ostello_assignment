import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../utils/colors.dart';
import '../utils/sizes.dart';

class TopServices extends StatelessWidget {
  const TopServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // runSpacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            customCard1(img: "assets/images/graph.png", text: "Career Trends"),
            customCard1(img: "assets/images/hat.png", text: "Scholarship"),
          ],
        ),
        const SizedBox(height: 30),
        customCard2(img: "assets/images/arrow.png"),
        const SizedBox(height: 30),
        customCard3(img: "assets/images/money.png"),
      ],
    );
  }
}

Widget customCard1({required String img, required String text}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Adjust color and opacity
          offset: const Offset(0, 3), // Control shadow offset (x, y)
          blurRadius: 10.0,
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: (157 * screenWidth) / 360,
        height: 170,
        decoration: const BoxDecoration(
          color: Color(0xffF6EFFE),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(5.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: -70,
                    left: -70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xffE8D4FF),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -70,
                    right: -70,
                    child: Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffCCA6F7).withOpacity(0.5),
                          width: 2.0, // Adjust the border width as needed
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 100, child: Image.asset(img)),
                        const SizedBox(height: 10),
                        Text(
                          text,
                          style: const TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget customCard2({required String img}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      height: 170,
      width: (328 * screenWidth) / 360,
      color: const Color(0xFFF6EFFE),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your Career Roadmap",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                  ),
                  const Text(
                    "Those who plan ahead hold the",
                    style: TextStyle(fontFamily: 'Avenir_light'),
                  ),
                  const Text(
                    "key to the future. Construct a.",
                    style: TextStyle(fontFamily: 'Avenir_light'),
                  ),
                  const SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create Now",
                          style: TextStyle(color: primaryColor),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -70,
            right: -70,
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: const Color(0xFFE8D4FF),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 120,
              child: Image.asset(img),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget customCard3({required String img}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Adjust color and opacity
          offset: const Offset(0, 3), // Control shadow offset (x, y)
          blurRadius: 10.0,
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 140,
        width: (328 * screenWidth) / 360,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            const Positioned(
              top: 10,
              left: 0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Refer & Earn",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Invite a friend to ostello and",
                      style: TextStyle(
                          fontFamily: 'Avenir_light',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "earn ₹1000 worth coins",
                      style: TextStyle(
                          fontFamily: 'Avenir_light',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 30,
              child: Transform.rotate(
                angle: 1.2 * math.pi,
                child: SizedBox(
                  height: 120,
                  child: Image.asset(img),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
