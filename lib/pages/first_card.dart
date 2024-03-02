import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors.dart';
import '../utils/sizes.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: screenHeight * 0.02,
      ),
      child: Container(
        height: screenHeight * 0.6,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: 400,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height - 10));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/images/focus.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Positioned(
              top: -0.08 * screenHeight,
              child: Image.asset(
                'assets/images/robot.png',
                fit: BoxFit.cover,
                width: screenWidth * 1.0,
              ),
            ),
            Positioned(
              bottom: 30,
              child: Column(
                children: [
                  const Text(
                    "No Guessing, Just Knowing:",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Your ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Avenir'),
                        ),
                        TextSpan(
                          text: ' Career Path ',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 22,
                            fontFamily: 'Avenir',
                            backgroundColor: Color(0xFFFFD400),
                          ),
                        ),
                        TextSpan(
                          text: ' Awaits!',
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              color: Colors.white,
                              fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Unlock your potential and get an instant",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Avenir_light',
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    "report on customised career",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Avenir_light',
                        fontSize: 15),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      HapticFeedback.mediumImpact();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.white,
                      foregroundColor: primaryColor,
                      side: const BorderSide(color: primaryColor),
                      // padding:
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * .010,
                          horizontal: screenWidth * 0.15),
                      // padding: const EdgeInsets.all(8.0),
                      child: const Center(
                        child: Text(
                          "Start Assessment",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Avenir_light',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
