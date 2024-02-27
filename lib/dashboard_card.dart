// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashBoardCard extends StatefulWidget {
  const DashBoardCard({super.key});

  @override
  State<DashBoardCard> createState() => _DashBoardCardState();
}

class _DashBoardCardState extends State<DashBoardCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 360,
        height: 430,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.3,
              child: PieChart(
                swapAnimationDuration: Duration(milliseconds: 150),
                swapAnimationCurve: Curves.linear,
                PieChartData(
                    sectionsSpace: 0,
                    centerSpaceRadius: 60,
                    sections: [
                      PieChartSectionData(
                        color: Color(0xffFFC700),
                        value: 32,
                        title: "32%",
                        titleStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      PieChartSectionData(
                        color: Color(0xff344154),
                        value: 30,
                        title: "30%",
                        titleStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      PieChartSectionData(
                        color: Color(0xff6D90F8),
                        value: 38,
                        title: "38%",
                        titleStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ]),
              ),
            ),
            Text(
              "\$987.85",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: Color(0xff404C5E),
              ),
            ),
            Text(
              "Avaliable Balance",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Earnings",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "1582.57",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff6D90F8).withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Spend",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "595.11",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffFFC700),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Available",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "987.56",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff344154),
                        ),
                      ),
                    ],
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
