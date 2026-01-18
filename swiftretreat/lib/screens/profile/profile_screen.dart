import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/firebase_auth_service.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _authService = FirebaseAuthService();
  String _name = 'Loading...';
  String _email = 'Loading...';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      final userData = await _authService.getUserData();
      final user = _authService.currentUser;

      setState(() {
        _name = userData?['name'] ?? user?.displayName ?? 'User';
        _email = userData?['email'] ?? user?.email ?? '';
      });
    } catch (e) {
      setState(() {
        _name = 'Error loading name';
        _email = 'Error loading email';
      });
    }
  }

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
            CircleAvatar(
              radius: 50,
              backgroundColor: AppTheme.primaryTeal,
              backgroundImage: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_R4S4j_-Ii4yXXo5eCYiwhO66hb0Ez9a1dQ&s',
              ),
            ),
            const SizedBox(height: 16),
            Text(
              _name,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(_email, style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 32),
            _buildProfileItem(
              context,
              Icons.person_outline,
              'Edit Profile',
              () async {
                final result = await Navigator.pushNamed(
                  context,
                  '/edit-profile',
                  arguments: {'name': _name, 'email': _email},
                );

                if (result != null && result is Map<String, dynamic>) {
                  setState(() {
                    _name = result['name'] ?? _name;
                    _email = result['email'] ?? _email;
                  });
                }
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
                onPressed: () async {
                  final navigator = Navigator.of(context);
                  final messenger = ScaffoldMessenger.of(context);
                  try {
                    await _authService.signOut();
                    if (mounted) {
                      navigator.pushReplacementNamed('/login');
                    }
                  } catch (e) {
                    if (mounted) {
                      messenger.showSnackBar(
                        SnackBar(
                          content: Text('Error logging out: ${e.toString()}'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  }
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.redAccent,
                  side: const BorderSide(color: Colors.redAccent),
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
        leading: Icon(icon, color: AppTheme.primaryTeal),
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
