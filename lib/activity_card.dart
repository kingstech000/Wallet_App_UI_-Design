// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:walletapp/test.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle kDatestyle = TextStyle(
        fontSize: 12,
        color: Colors.blueGrey.withOpacity(0.4),
        fontWeight: FontWeight.w600);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 360,
        width: 360,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Statistics",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey.withOpacity(1)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "05 Jan",
                        style: kDatestyle,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color(0xff6D90F8)),
                          child: Icon(
                            Icons.speed_rounded,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Limit",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "\$150.00",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w700),
                        ),
                        Text("per day",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey.withOpacity(0.6))),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 220, width: 350, child: BarChartSample())
            ],
          ),
        ),
      ),
    );
  }
}
