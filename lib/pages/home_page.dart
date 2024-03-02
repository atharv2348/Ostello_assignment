import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ostello_assignment/pages/custom_bottom_navigation_bar.dart';
import 'package:ostello_assignment/pages/first_card.dart';
import 'package:ostello_assignment/pages/last_card.dart';
import 'package:ostello_assignment/pages/market_place.dart';
import 'package:ostello_assignment/pages/quick_info.dart';
import 'package:ostello_assignment/pages/top_services.dart';
import 'package:ostello_assignment/pages/user_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFFC36DEA).withOpacity(0.5),
                blurRadius: 20.0,
                spreadRadius: 3),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            HapticFeedback.mediumImpact();
          },
          hoverElevation: 2,
          highlightElevation: 10,
          foregroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: BorderSide(
              color: Colors.pink.shade100,
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),
          backgroundColor: Colors.white,
          child: Image.asset('assets/images/robot_head.png'),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserInfo(),
              SizedBox(height: 10),
              FirstCard(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Top Services",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              SizedBox(height: 20),
              TopServices(),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Marketplace",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              SizedBox(height: 30),
              MarketPlace(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Quick Info.",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              QuickInfo(),
              SizedBox(height: 30),
              LastCard(),
            ],
          ),
        ),
      ),
    );
  }
}
