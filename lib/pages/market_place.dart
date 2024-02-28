import 'package:flutter/material.dart';

import '../utils/sizes.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
