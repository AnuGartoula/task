import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    // return const Scaffold(
    // bottomNavigationBar: GNav(
    //     gap: 7,
    //     color: Color.fromARGB(255, 255, 255, 255),
    //     activeColor: Color.fromARGB(255, 17, 1, 45),
    //     backgroundColor: Color.fromARGB(255, 174, 162, 201),
    //     tabs: [
    //   GButton(
    //     icon: Icons.home,
    //     text: "Home",
    //   ),
    //   GButton(
    //     icon: Icons.favorite,
    //     text: "Favourites",
    //   ),
    //   GButton(icon: Icons.search, text: "Search Taks"),
    //   GButton(icon: Icons.settings, text: "Settings"),
    // ]));

    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: GNav(
          gap: 7,
          color: Color.fromARGB(255, 255, 255, 255),
          activeColor: Color.fromARGB(255, 17, 1, 45),
          backgroundColor: Color.fromARGB(255, 174, 162, 201),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite,
              text: "Favourites",
            ),
            GButton(icon: Icons.search, text: "Search Taks"),
            GButton(icon: Icons.settings, text: "Settings"),
          ]),
    );
  }
}
