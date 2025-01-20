import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'StatusScreen.dart';
import 'CommunitiesScreen.dart';
import 'CallsScreen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  // List of screens for navigation
  final List<Widget> _screens = [
    HomeScreen(),
    StatusScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Show the screen based on the selected index
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFF0B141B),
        selectedIndex: _selectedIndex, // Current selected index
        onDestinationSelected: _onDestinationSelected, // Callback for selecting a tab
        destinations: const [
          NavigationDestination(icon: Icon(Icons.chat), label: 'Chats'),
          NavigationDestination(icon: Icon(Icons.upcoming), label: 'Updates'),
          NavigationDestination(icon: Icon(Icons.group), label: 'Communities'),
          NavigationDestination(icon: Icon(Icons.call), label: 'Calls'),
        ],
      ),
    );
  }
}


