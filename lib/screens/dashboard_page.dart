// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walletapp/dashboard_card.dart';
import 'package:walletapp/screens/second_transaction_card.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final blockSizeHorizontal = screenWidth / 100;
    final blockSizeVertical = screenHeight / 100;
    final kHorizontalPadding = blockSizeHorizontal * 3;
    final kVerticalPadding = blockSizeVertical * 2;
    return SafeArea(
        child: SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kHorizontalPadding, vertical: kVerticalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_outlined)),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: blockSizeHorizontal * 6,
                        fontWeight: FontWeight.w900,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
          ),
          SizedBox(
            height: blockSizeHorizontal * 2,
          ),
          const DashBoardCard(),
          SizedBox(
            height: blockSizeHorizontal * 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "UnPaid Bill",
                  style: TextStyle(
                    fontSize: blockSizeHorizontal * 6,
                    fontWeight: FontWeight.w900,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TabBar(
                      controller: tabController,
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(right: 50),
                      labelStyle: TextStyle(fontSize: 15),
                      unselectedLabelColor: Colors.blueGrey,
                      indicatorColor: Colors.blue,
                      labelColor: Colors.blue,
                      tabs: [
                        Tab(
                          text: "  All",
                        ),
                        Tab(
                          text: "Upcoming",
                        ),
                        Tab(
                          text: "Previous",
                        ),
                      ],
                    ),
                    Flexible(
                      child: SizedBox(
                        height: 200,
                        child: TabBarView(controller: tabController, children: [
                          ListView(
                            children: [
                              SecondTransactionCard(imgLink: "images/dribble.jpg", text1: "Dribbble", text2: "Waiting for payment"),
                              SecondTransactionCard(imgLink: "images/font.png", text1: "Font awesome", text2: "Waiting for payment"),
                            ],
                          ),
                          ListView(
                            children: [
                              SecondTransactionCard(imgLink: "images/dribble.jpg", text1: "Dribbble", text2: "Waiting for payment"),
                              SecondTransactionCard(imgLink: "images/font.png", text1: "Font awesome", text2: "Waiting for payment"),
                            ],
                          ),
                          ListView(
                            children: [
                              SecondTransactionCard(imgLink: "images/dribble.jpg", text1: "Dribbble", text2: "Waiting for payment"),
                              SecondTransactionCard(imgLink: "images/font.png", text1: "Font awesome", text2: "Waiting for payment"),
                            ],
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
