import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help & Support')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(
            'Frequently Asked Questions',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const ExpansionTile(
            title: Text('How do I cancel a booking?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'You can cancel your booking from the "My Bookings" tab. Select the booking you wish to cancel and tap on "Cancel Booking". Cancellation fees may apply depending on the hotel policy.',
                ),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Is my payment information secure?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Yes, we use industry-standard encryption to protect your payment details. We do not store your full credit card information on our servers.',
                ),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Do you offer Shariah-compliant hotels?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Yes! All hotels listed on Swift Retreat are verified for Shariah compliance, offering Halal food, prayer facilities, and family-friendly environments.',
                ),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('How to contact customer support?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'You can reach our support team 24/7 via email at support@swiftretreat.com.',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
