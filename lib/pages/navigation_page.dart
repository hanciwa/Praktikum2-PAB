import 'package:flutter/material.dart';
import 'movie_page.dart';
import 'detail_page.dart';
import 'profile_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() =>
      _NavigationPageState();
}

class _NavigationPageState
    extends State<NavigationPage> {

  int selectedIndex = 0;

  final List<Widget> pages = [

    // HOME
    const MoviePage(),

    // MOVIE
    const DetailPage(
      title: 'Dune : Part Two',
      image: 'images/interstellar.jpg',
    ),

    // PROFILE
    const ProfilePage(),
  ];

  void changePage(int index) {

    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,

        onTap: changePage,

        backgroundColor: const Color(0xff172033),

        selectedItemColor: Colors.white,

        unselectedItemColor: Colors.white70,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movie',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}