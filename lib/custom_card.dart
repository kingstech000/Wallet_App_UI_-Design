import 'package:flutter/material.dart';
import 'package:walletapp/screens/constants.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 200,
        width: 360,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xff6D90F8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Current Balance",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 60,
                    child: Image.asset("images/mastercard.png"),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff89A4FB)),
                    child: const Center(
                      child: Text(
                        "USD",
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "979.85",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "****",
                    style: kStarStyle,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "****",
                    style: kStarStyle,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "****",
                    style: kStarStyle,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1234",
                    style: kStarStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Michael Samuel",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 18,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Exp. Date",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "02/30",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
