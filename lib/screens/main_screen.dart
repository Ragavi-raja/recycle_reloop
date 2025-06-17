import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'home/home_tab.dart';
import 'recycle/recycle_tab.dart';
import 'map/map_tab.dart';
import 'stats/stats_tab.dart';
import 'profile/profile_tab.dart'; // We will navigate to this separately

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeTab(),
    const RecycleTab(),
    const MapTab(),
    const StatsTab(),
    // ProfileTab will be navigated to separately, not part of the bottom nav stack
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index == 4) {
        // Assuming the 5th item (index 4) is for Profile
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfileTab()));
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reloop'),
        backgroundColor: AppTheme.primaryBlue,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recycling),
            label: 'Recycle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.person), // This icon will navigate to ProfileScreen
            label: 'Profile',
          ),
        ],
        currentIndex:
            _selectedIndex, // This will only control the first 4 tabs visually
        selectedItemColor: AppTheme.primaryGreen,
        unselectedItemColor: AppTheme.textLight,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Use fixed type for 5 items
      ),
    );
  }
}

// Placeholder screens - these will be implemented in separate files
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Screen'));
  }
}

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Map Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Profile Screen'));
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Screen'));
  }
}
