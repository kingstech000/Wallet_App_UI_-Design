// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(
      {super.key,
      required this.imgLink,
      required this.text1,
      required this.text2,
      required this.pricetext,
       this.priceColor
      });

  final String imgLink;
  final String text1;
  final String text2;
  final String pricetext;
  final Color? priceColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 100,
        width: 360,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Image.asset(imgLink),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                pricetext,
                style: TextStyle(color: priceColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
