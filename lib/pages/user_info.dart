import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/sizes.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black54,
              offset: Offset(0, 5),
              // spreadRadius: 1,
              blurRadius: 7)
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.05,
          top: screenWidth * 0.05,
          right: screenWidth * 0.05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi Rajbir,",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(Icons.person_2_outlined),
                    Text(
                      "Gandhinagar, Ahmedabad...",
                      style: TextStyle(fontFamily: 'Avenir_light'),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: primaryColor,
                    )
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
            SizedBox(
              height: 40,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: primaryColor,
                    ),
                  ),
                  Positioned(
                    left: 8,
                    child: Image.asset(
                      'assets/images/coin.png',
                      scale: 28,
                    ),
                  ),
                  const Positioned(
                    left: 30,
                    child: Text(
                      "3500",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Avenir_light'),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/man.jpeg',
                              scale: 23,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
