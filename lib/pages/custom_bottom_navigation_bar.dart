import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      surfaceTintColor: Colors.white,
      notchMargin: 12.0,
      shadowColor: Colors.black,
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      // height: 70,
      elevation: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Spacer(flex: 1),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.home_filled,
                color: primaryColor,
                size: 25,
              ),
              Text(
                "Home",
                style:
                    TextStyle(color: primaryColor, fontFamily: 'Avenir_light'),
              )
            ],
          ),
          Spacer(flex: 4),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.inventory_2,
                color: Colors.grey,
                size: 25,
              ),
              Text(
                "Marketplace",
                style:
                    TextStyle(color: Colors.grey, fontFamily: 'Avenir_light'),
              )
            ],
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
