import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reloop'),
        backgroundColor: AppTheme.primaryBlue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildFeatureCard(
            context,
            'Track Pickup',
            Icons.local_shipping,
            () {
              // TODO: Implement tracking feature
            },
          ),
          _buildFeatureCard(
            context,
            'Schedule Pickup',
            Icons.calendar_today,
            () {
              // TODO: Implement scheduling feature
            },
          ),
          _buildFeatureCard(
            context,
            'Rewards',
            Icons.card_giftcard,
            () {
              // TODO: Implement rewards feature
            },
          ),
          _buildFeatureCard(
            context,
            'Community',
            Icons.people,
            () {
              // TODO: Implement community feature
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: AppTheme.primaryBlue,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
