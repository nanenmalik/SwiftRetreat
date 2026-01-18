import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy Policy')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.mocha,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'Last Updated: January 18, 2026',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 24),
            _buildSection(context, '1. Introduction',
                'Swift Retreat is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application.'),
            _buildSection(context, '2. Information We Collect',
                'We may collect information about you in a variety of ways. The information we may collect on the Site includes:\n\n• Personal Data: name, email address, phone number, payment information, and booking history.\n• Device Information: device type, operating system, and unique device identifiers.\n• Usage Data: how you interact with our app, pages viewed, and features used.'),
            _buildSection(context, '3. Use of Your Information',
                'Having accurate information about you permits us to provide you with a smooth, efficient, and customized experience. Specifically, we may use information collected about you via the Site to:\n\n• Process your transactions and send related information.\n• Email you regarding your account or order.\n• Fulfill and manage purchases, orders, payments, and other transactions related to our Services.\n• Generate a personal profile about you.'),
            _buildSection(context, '4. Disclosure of Your Information',
                'We may share your information in situations outlined below. However, we will not rent or sell your information to third parties:\n\n• By Law or to Protect Rights.\n• Third-Party Service Providers.\n• Business Transfers.\n• Affiliates.'),
            _buildSection(context, '5. Security of Your Information',
                'We use administrative, technical, and physical security measures to protect your personal information. However, complete security cannot be guaranteed.'),
            _buildSection(context, '6. Contact Us',
                'If you have questions or comments about this Privacy Policy, please contact us at:\n\nEmail: privacy@swiftretreat.com\nPhone: +1 (555) 123-4567'),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.mocha,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}