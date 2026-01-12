import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppTheme.mocha,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?fit=crop&w=200&h=200',
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Adli Wahid',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text('adli@example.com', style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 32),
            _buildProfileItem(
              context,
              Icons.person_outline,
              'Edit Profile',
              () {
                Navigator.pushNamed(context, '/edit-profile');
              },
            ),
            _buildProfileItem(
              context,
              Icons.payment_outlined,
              'Payment Methods',
              () {
                Navigator.pushNamed(context, '/payment-methods');
              },
            ),
            _buildProfileItem(context, Icons.settings_outlined, 'Settings', () {
              Navigator.pushNamed(context, '/settings');
            }),
            _buildProfileItem(
              context,
              Icons.help_outline,
              'Help & Support',
              () {
                Navigator.pushNamed(context, '/help');
              },
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppTheme.terracotta,
                  side: const BorderSide(color: AppTheme.terracotta),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFEEEEEE)),
      ),
      child: ListTile(
        leading: Icon(icon, color: AppTheme.mocha),
        title: Text(title),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: onTap,
      ),
    );
  }
}
