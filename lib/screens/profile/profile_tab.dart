import 'package:flutter/material.dart';
import '../../theme/app_theme.dart'; // Import AppTheme

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: AppTheme.primaryBlue, // Use primaryBlue from AppTheme
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Container(
              padding: const EdgeInsets.all(24.0),
              color:
                  AppTheme.primaryBlue, // Use primaryBlue for header background
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: AppTheme.primaryBlue,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'john.doe@example.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Profile Options
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildProfileOption(
                    context,
                    Icons.edit,
                    'Edit Profile',
                    () {
                      // TODO: Implement edit profile navigation
                    },
                  ),
                  _buildProfileOption(
                    context,
                    Icons.settings,
                    'Settings',
                    () {
                      // TODO: Implement settings navigation
                    },
                  ),
                  _buildProfileOption(
                    context,
                    Icons.history,
                    'Recycling History',
                    () {
                      // TODO: Implement recycling history navigation
                    },
                  ),
                  _buildProfileOption(
                    context,
                    Icons.logout,
                    'Logout',
                    () {
                      // TODO: Implement logout logic
                    },
                    isLogout: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap, {
    bool isLogout = false,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color:
              isLogout ? Colors.red : AppTheme.primaryBlue, // Use primaryBlue
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isLogout ? Colors.red : AppTheme.textDark,
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
