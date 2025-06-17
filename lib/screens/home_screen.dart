import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'home/home_tab.dart';
import 'recycle/recycle_tab.dart';
import 'map/map_tab.dart';
import 'stats/stats_tab.dart';
import 'profile/profile_tab.dart';
import 'main_screen.dart'; // Import the new MainScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Redirect to MainScreen
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    });
    return const Scaffold(
      body: Center(
          child:
              CircularProgressIndicator()), // Show a loading indicator briefly
    );
  }
}
