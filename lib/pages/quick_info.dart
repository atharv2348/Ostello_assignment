import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/sizes.dart';

class QuickInfo extends StatelessWidget {
  const QuickInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: (290 * screenWidth) / 360,
                decoration: BoxDecoration(
                  color: const Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Career Trends",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.",
                        style:
                            TextStyle(fontFamily: 'Avenir_light', fontSize: 15),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                                color: Color(0xFF7D23E0), width: 1.0),
                          ),
                          onPressed: () {
                            HapticFeedback.mediumImpact();
                          },
                          child: const Center(
                            child: Text("Explore Now",
                                style: TextStyle(color: Color(0xFF7D23E0))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: (290 * screenWidth) / 360,
                decoration: BoxDecoration(
                  color: const Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Career Trends",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.",
                        style:
                            TextStyle(fontFamily: 'Avenir_light', fontSize: 15),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                                color: Color(0xFF7D23E0), width: 1.0),
                          ),
                          onPressed: () {
                            HapticFeedback.mediumImpact();
                          },
                          child: const Center(
                            child: Text("Explore Now",
                                style: TextStyle(color: Color(0xFF7D23E0))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
