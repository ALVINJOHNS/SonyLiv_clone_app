import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:sonyliv/pages/mainmenu.dart';
import 'package:sonyliv/pages/more.dart';
import 'package:sonyliv/pages/mylist.dart';
import 'package:sonyliv/pages/premium.dart';
import 'package:sonyliv/pages/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pages = [Mainmenu(), Search(), Premium(), MyList(), More()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[index],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(208, 0, 0, 0),
                  Colors.black,
                  Colors.black
                ])),
        child: FloatingNavbar(
          unselectedItemColor: Color.fromARGB(255, 139, 139, 139),
          selectedItemColor: Color.fromARGB(255, 205, 165, 43),
          selectedBackgroundColor: Color.fromARGB(0, 0, 0, 0),
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          onTap: (int val) {
            setState(() {
              index = val;
            });
          },
          currentIndex: index,
          items: [
            FloatingNavbarItem(icon: Icons.home_outlined, title: 'Home'),
            FloatingNavbarItem(icon: Icons.search_rounded, title: 'Search'),
            FloatingNavbarItem(
                icon: Icons.workspace_premium_outlined, title: 'Premium'),
            FloatingNavbarItem(icon: Icons.add, title: 'My list'),
            FloatingNavbarItem(
                icon: Icons.format_align_right_outlined, title: 'More'),
          ],
        ),
      ),
    );
  }
}
