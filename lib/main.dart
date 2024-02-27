// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:walletapp/screens/activity_screen.dart';
import 'package:walletapp/screens/dashboard_page.dart';
import 'package:walletapp/screens/homepage.dart';

void main() {
  runApp(const WalletApp());
}

class WalletApp extends StatefulWidget {
  const WalletApp({super.key});

  @override
  State<WalletApp> createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  Widget currentPage = const HomePage();
  bool onPage1 = true;
  bool onPage2 = false;
  bool onPage3 = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 232, 250),
        body: currentPage,
        bottomNavigationBar: Container(
          width: screenWidth,
          height: 85,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: BottomAppBar(
            color: Colors.transparent,
            notchMargin: 4,
            elevation: 0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentPage = const HomePage();
                          onPage1 = true;
                          onPage2 = false;
                          onPage3 = false;
                        });
                      },
                      icon: Icon(
                        Icons.water_damage_outlined,
                        size: 30,
                        color: onPage1
                            ? Colors.blue
                            : Color.fromARGB(255, 138, 207, 241),
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentPage = const DashBoardPage();
                          onPage1 = false;
                          onPage2 = true;
                          onPage3 = false;
                        });
                      },
                      icon: Icon(
                        Icons.wysiwyg,
                        size: 30,
                        color: onPage2
                            ? Colors.blue
                            : const Color.fromARGB(255, 138, 207, 241),
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentPage = const ActivityPage();
                          onPage1 = false;
                          onPage2 = false;
                          onPage3 = true;
                        });
                      },
                      icon: Icon(
                        Icons.analytics_outlined,
                        size: 30,
                        color: onPage3
                            ? Colors.blue
                            : Color.fromARGB(255, 138, 207, 241),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Color.fromARGB(255, 138, 207, 241),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_outline_rounded,
                        size: 30,
                        color: Color.fromARGB(255, 138, 207, 241),
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
