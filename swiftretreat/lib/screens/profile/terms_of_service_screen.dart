import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms of Service')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms of Service',
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
            _buildSection(context, '1. Agreement to Terms',
                'By accessing and using the Swift Retreat mobile application, you accept and agree to be bound by and comply with these Terms and Conditions. If you do not agree to abide by the above, please do not use this service.'),
            _buildSection(context, '2. Use License',
                'Permission is granted to temporarily download one copy of the materials (information or software) on Swift Retreat for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not:\n\n• Modify or copy the materials.\n• Use the materials for any commercial purpose or for any public display.\n• Attempt to decompile or reverse engineer any software contained on Swift Retreat.\n• Remove any copyright or other proprietary notations from the materials.\n• Transfer the materials to another person or "mirror" the materials on any other server.'),
            _buildSection(context, '3. Disclaimer',
                'The materials on Swift Retreat are provided on an "as is" basis. Swift Retreat makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties including, without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights.'),
            _buildSection(context, '4. Limitations',
                'In no event shall Swift Retreat or its suppliers be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use the materials on Swift Retreat, even if Swift Retreat or an authorized representative has been notified orally or in writing of the possibility of such damage.'),
            _buildSection(context, '5. Accuracy of Materials',
                'The materials appearing on Swift Retreat could include technical, typographical, or photographic errors. Swift Retreat does not warrant that any of the materials on its website are accurate, complete, or current. Swift Retreat may make changes to the materials contained on its website at any time without notice.'),
            _buildSection(context, '6. Links',
                'Swift Retreat has not reviewed all of the sites linked to its website and is not responsible for the contents of any such linked site. The inclusion of any link does not imply endorsement by Swift Retreat of the site. Use of any such linked website is at the user\'s own risk.'),
            _buildSection(context, '7. Modifications',
                'Swift Retreat may revise these Terms and Conditions for its website at any time without notice. By using this website, you are agreeing to be bound by the then current version of these Terms and Conditions.'),
            _buildSection(context, '8. Governing Law',
                'These Terms and Conditions are governed by and construed in accordance with the laws of the jurisdiction in which Swift Retreat operates, and you irrevocably submit to the exclusive jurisdiction of the courts in that location.'),
            _buildSection(context, '9. Contact Information',
                'If you have any questions about these Terms of Service, please contact us at:\n\nEmail: support@swiftretreat.com\nPhone: +1 (555) 123-4567'),
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