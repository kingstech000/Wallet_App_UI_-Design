// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walletapp/activity_card.dart';
import 'package:walletapp/analytics_card.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final blockSizeHorizontal = screenWidth / 100;
    final blockSizeVertical = screenHeight / 100;
    final kHorizontalPadding = blockSizeHorizontal * 3;
    final kVerticalPadding = blockSizeVertical * 3;
    return SafeArea(
        child: SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding, vertical: kVerticalPadding),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_outlined)),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Activity",
                      style: TextStyle(
                        fontSize: blockSizeHorizontal * 6,
                        fontWeight: FontWeight.w900,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          ),
          ActivityCard(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding * 1.5),
            child: Text(
              "Analytics",
              style: TextStyle(
                fontSize: blockSizeHorizontal * 5.5,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding * 1.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AnalyticsCard(
                  text: "Bank",
                  value1: 80,
                  value2: 20,
                  value1Color: Color(0xff60DAFF),
                  value2Color: Color(0xffF3F6FF),
                ),
                AnalyticsCard(
                  text: "Ecommerce",
                  value1: 60,
                  value2: 40,
                  value1Color: Color(0xffFDAD4E),
                  value2Color: Color(0xffF3F6FF),
                ),
                AnalyticsCard(
                  text: "Food",
                  value1: 45,
                  value2: 55,
                  value1Color: Color(0xff9098FD),
                  value2Color: Color(0xffF3F6FF),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
