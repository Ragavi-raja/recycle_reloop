import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../main_screen.dart'; // For temporary navigation to MainScreen

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _mobileNumberController = TextEditingController();
  bool _rememberMe = false;

  @override
  void dispose() {
    _mobileNumberController.dispose();
    super.dispose();
  }

  void _sendOtp() {
    // TODO: Implement API call to send OTP
    print('Sending OTP to: ${_mobileNumberController.text}');
    // After sending OTP, you would typically navigate to an OTP verification screen
    // For now, let's keep the temporary navigation to MainScreen for testing purposes.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
  }

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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Center children horizontally
                      children: [
                        const SizedBox(
                            height: 12), // Gap below login_overlay.png
                        // Text below image
                        const Text(
                          'Welcome, please login to your account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Neue Haas Grotesk Text Pro',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.5, // 24px line height
                            letterSpacing: 0,
                            color: AppTheme.textDark,
                          ),
                        ),
                        const SizedBox(
                            height: 20), // Gap below text to login_logo
                        // Login logo
                        Image.asset(
                          'assets/images/login_logo.png',
                          height: 100, // Adjust height as needed
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                            height: 40), // Gap below login_logo to text field
                        // Placeholder for Mobile Number Text Field
                        TextFormField(
                          controller: _mobileNumberController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Enter mobile number',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none, // No outline
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: AppTheme.textLight2), // Outline color
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: AppTheme
                                      .primaryBlue), // Focused outline color
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Remember me checkbox
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  _rememberMe = newValue ?? false;
                                });
                              },
                              activeColor: AppTheme.primaryGreen,
                            ),
                            const Text(
                              'Remember me',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppTheme.textDark,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        // Login Button
                        SizedBox(
                          width: double.infinity, // Make button full width
                          child: ElevatedButton(
                            onPressed: _sendOtp,
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  AppTheme.primaryBlue, // Use primary blue
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Divider
                        const Divider(color: AppTheme.textLight2, thickness: 1),
                        const SizedBox(height: 24),
                        // Social Login Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Google Login
                            IconButton(
                              onPressed: () {
                                // TODO: Implement Google login
                              },
                              icon: const Icon(Icons.g_mobiledata,
                                  size: 40), // Placeholder
                              color: AppTheme.primaryBlue,
                            ),
                            const SizedBox(width: 24),
                            // Facebook Login
                            IconButton(
                              onPressed: () {
                                // TODO: Implement Facebook login
                              },
                              icon: const Icon(Icons.facebook,
                                  size: 40), // Placeholder
                              color: AppTheme.primaryBlue,
                            ),
                            // Add more social buttons as needed
                          ],
                        ),
                        const SizedBox(height: 20), // Bottom padding
                        // Temporarily keep MainScreen button for navigation testing
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainScreen()),
                            );
                          },
                          child: const Text('Go to Main Screen'),
                        ),
                      ],
                    ),
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
                'assets/images/login_overlay.png',
                width: screenSize.width, // Explicitly set to full width
                height:
                    300, // Example height, adjust as necessary to cover 270px + some overlap
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
