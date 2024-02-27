// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walletapp/custom_card.dart';
import 'package:walletapp/screens/transaction_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Padding(
              padding: EdgeInsets.only(
                  top: kVerticalPadding,
                  left: kHorizontalPadding,
                  right: kHorizontalPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: kHorizontalPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                fontSize: blockSizeHorizontal * 4,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height: blockSizeHorizontal * 1),
                            Text(
                              "Michael",
                              style: TextStyle(
                                fontSize: blockSizeHorizontal * 6,
                                fontWeight: FontWeight.w900,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.search)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications_none_rounded)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kHorizontalPadding * 0.3,
            ),
            CustomCard(),
            SizedBox(
              height: blockSizeHorizontal * 5,
            ),
            Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: kHorizontalPadding * 1.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Service",
                      style: TextStyle(
                        fontSize: blockSizeHorizontal * 6,
                        fontWeight: FontWeight.w900,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      height: blockSizeHorizontal * 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconCards(
                          color: Color(0xffE1F5EA),
                          tag: "Wallet",
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        IconCards(
                          color: Color(0xffFFEAD5),
                          tag: "Transfer",
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.published_with_changes_outlined,
                              color: Color(0xffef9c56),
                            ),
                          ),
                        ),
                        IconCards(
                          color: Color(0xffF8F5FE),
                          tag: "Pay",
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.note_rounded,
                              color: Color(0xffD7A8EE),
                            ),
                          ),
                        ),
                        IconCards(
                          color: Color(0xffE1F5FE),
                          tag: "Top up",
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_to_home_screen_outlined,
                              color: Color(0xff68C5E4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: blockSizeVertical * 3,
                    ),
                    Text(
                      "Recent Transaction",
                      style: TextStyle(
                        fontSize: blockSizeHorizontal * 6,
                        fontWeight: FontWeight.w900,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      height: blockSizeVertical * 3,
                    ),
                    TransactionCard(
                      imgLink: "images/acrobat.png",
                      text1: "Adobe Collection",
                      text2: "Payment via wallet can be done",
                      priceColor: Colors.red,
                      pricetext: "\$125",
                    ),
                    TransactionCard(
                      imgLink: "images/uplabs.jpg",
                      text1: "uplabs",
                      text2: "Payments received",
                      pricetext: "\$95",
                      priceColor: Colors.green,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class IconCards extends StatelessWidget {
  const IconCards(
      {super.key, required this.color, required this.child, required this.tag});

  final Color color;
  final Widget child;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: color.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: child,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          tag,
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
