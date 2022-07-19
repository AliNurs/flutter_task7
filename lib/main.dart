import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task7/pages/location_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/character_screen.dart';
import 'pages/episode_screen.dart';
import 'pages/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: BNavigationBar(),
    );
  }
}

class BNavigationBar extends StatefulWidget {
  const BNavigationBar({Key? key}) : super(key: key);

  @override
  State<BNavigationBar> createState() => _BNavigationBarState();
}

class _BNavigationBarState extends State<BNavigationBar> {
  int currentIndex = 2;

  final screens = [
    CharacterScreen(),
    LocationScreen(),
    EpisodeScreen(),
    SettingsScreen(),
  ];

  //final color = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Colors.blue,
        //  unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/character.svg',
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              'assets/svgs/character.svg',
              color: Colors.blue,
            ),
            label: 'Персонажи',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/location.svg',
              // color: color,
            ),
            activeIcon: SvgPicture.asset(
              'assets/svgs/location.svg',
              color: Colors.blue,
            ),
            label: 'Локации',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/episodes.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svgs/episodes.svg',
              color: Colors.blue,
            ),
            label: 'Эпизоды',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
        ],
      ),
    );
  }
}
