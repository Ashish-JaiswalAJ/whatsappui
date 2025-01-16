import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'StatusScreen.dart';
import 'CallsScreen.dart';
import 'CommunitiesScreen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.chat), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.upcoming), label: 'Updates'),
            NavigationDestination(icon: Icon(Icons.group), label: 'Group'),
            NavigationDestination(icon: Icon(Icons.call), label: 'Calls'),
          ],
      ),
    );
  }
}
