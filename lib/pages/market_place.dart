import 'package:flutter/material.dart';

import '../utils/sizes.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  Widget gridPart(
      {required String img,
      required String text,
      required double topLeft,
      required double topRight,
      required double bottomRight,
      required double bottomLeft}) {
    return Container(
      height: 145,
      width: 145,
      decoration: BoxDecoration(
          color: const Color(0xFFE6CFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
          ),
          border: Border.all(
            width: 1,
            color: Color.fromARGB(255, 176, 142, 211),
          )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50, child: Image.asset(img)),
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 100),
              child: Text(
                text,
                style: const TextStyle(fontFamily: 'Avenir_roman'),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 300,
                width: 300,
                // decoration: BoxDecoration(
                //   color: const Color.fromARGB(239, 188, 165, 214),
                //    color: Color(0xFFE6CFFF),
                //   border: Border.all(color: Colors.black12, width: 1),
                //   borderRadius: BorderRadius.circular(20),
                // ),
                child: Wrap(
                  // runSpacing: 1,
                  // spacing: 1,
                  children: [
                    gridPart(
                        img: "assets/images/verify.png",
                        text: "Verified Coaching",
                        bottomLeft: 0,
                        bottomRight: 0,
                        topRight: 0,
                        topLeft: 20),
                    gridPart(
                        img: "assets/images/save_money.png",
                        text: "Lowest Prices",
                        bottomLeft: 0,
                        bottomRight: 0,
                        topRight: 20,
                        topLeft: 0),
                    gridPart(
                        img: "assets/images/indicator.png",
                        text: "Free Career Check",
                        bottomLeft: 20,
                        bottomRight: 0,
                        topRight: 0,
                        topLeft: 0),
                    gridPart(
                        img: "assets/images/chart.png",
                        text: "Progress Tracking",
                        bottomLeft: 0,
                        bottomRight: 20,
                        topRight: 0,
                        topLeft: 0),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 140,
                      width: (328 * screenWidth) / 360,
                      color: const Color.fromARGB(255, 60, 134, 63),
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
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Invite a friend to ostello and",
                                    style: TextStyle(
                                        fontFamily: 'Avenir_light',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "earn ₹1000 worth coins",
                                    style: TextStyle(
                                        fontFamily: 'Avenir_light',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            child: SizedBox(
                              height: 120,
                              child: Image.asset("assets/images/gov.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 140,
                    width: (328 * screenWidth) / 360,
                    color: Colors.orange,
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
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Invite a friend to ostello and",
                                  style: TextStyle(
                                      fontFamily: 'Avenir_light',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "earn ₹1000 worth coins",
                                  style: TextStyle(
                                      fontFamily: 'Avenir_light',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          child: SizedBox(
                            height: 120,
                            child: Image.asset("assets/images/gov.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
