import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../main_screen.dart'; // For temporary navigation to MainScreen

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppTheme.primaryBlue, // Primary blue background
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Stack(
          children: [
            // Blue background (fills the whole screen, but appears for the top 20%)
            Container(
              color: AppTheme.primaryBlue,
            ),
            // White curved container
            Positioned(
              top: 270.0, // White background starts 270px below the top
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0), // Top-left curve
                    topRight: Radius.circular(50.0), // Top-right curve
                  ),
                ),
                child: Center(
                  // Temporary button to navigate to MainScreen for testing (kept for now)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()),
                      );
                    },
                    child: const Text('Go to Main Screen'),
                  ),
                ),
              ),
            ),
            // Login overlay image (on top of both layers)
            Positioned(
              top: 0, // Starts from the very top of the screen (blue layer)
              left: 0,
              right: 0,
              child: Image.asset(
                // Removed Center, Image.asset will take full width
                'assets/images/login_overlay.png',
                width: MediaQuery.of(context)
                    .size
                    .width, // Explicitly set to full width
                fit: BoxFit
                    .fitWidth, // Scale to fit width, adjust height proportionally
              ),
            ),
          ],
        ),
      ),
    );
  }
}
