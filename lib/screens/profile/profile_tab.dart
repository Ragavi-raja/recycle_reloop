import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle settings
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Container(
              padding: EdgeInsets.all(24.w),
              color: Theme.of(context).primaryColor,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50.w,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // Profile Options
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  _buildProfileOption(
                    context,
                    Icons.history,
                    'Recycling History',
                    () {
                      // Handle history
                    },
                  ),
                  _buildProfileOption(
                    context,
                    Icons.stars,
                    'Rewards',
                    () {
                      // Handle rewards
                    },
                  ),
                  _buildProfileOption(
                    context,
                    Icons.location_on,
                    'Nearby Centers',
                    () {
                      // Handle nearby centers
                    },
                  ),
                  _buildProfileOption(
                    context,
                    Icons.help,
                    'Help & Support',
                    () {
                      // Handle help
                    },
                  ),
                  _buildProfileOption(
                    context,
                    Icons.logout,
                    'Logout',
                    () {
                      // Handle logout
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
      margin: EdgeInsets.only(bottom: 12.h),
      child: ListTile(
        leading: Icon(
          icon,
          color: isLogout ? Colors.red : Theme.of(context).primaryColor,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: isLogout ? Colors.red : null,
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
