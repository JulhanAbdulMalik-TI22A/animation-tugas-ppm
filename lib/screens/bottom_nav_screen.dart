import 'package:flutter/material.dart';
import 'package:pisa_academy/screens/home.dart';
import 'package:pisa_academy/screens/lessons_list.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const LessonsList(),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo_pisa2.png',
            width: 250,
          ),
          const SizedBox(height: 10),
          const Text('Favorites Comming Soon'),
          const Text('- Julhan A Malik -')
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo_pisa2.png',
            width: 250,
          ),
          const SizedBox(height: 10),
          const Text('Profile Comming Soon'),
          const Text('- Julhan A Malik -')
        ],
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded, color: Colors.blue),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_lesson_outlined),
            activeIcon: Icon(Icons.play_lesson_rounded, color: Colors.blue),
            label: 'Lessons',
            tooltip: 'Lessons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite, color: Colors.blue),
            label: 'Favorites',
            tooltip: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person, color: Colors.blue),
            label: 'Profile',
            tooltip: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
