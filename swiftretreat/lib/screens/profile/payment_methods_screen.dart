import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Methods')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          _buildCardItem(
            context,
            'Mastercard ending in 4242',
            'Exp: 12/28',
            Icons.credit_card,
            true,
          ),
          const SizedBox(height: 16),
          _buildCardItem(
            context,
            'Visa ending in 8888',
            'Exp: 09/26',
            Icons.credit_card,
            false,
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                // Mock action
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Feature coming soon...')),
                );
              },
              icon: const Icon(Icons.add),
              label: const Text('Add New Card'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardItem(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    bool isDefault,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: AppTheme.mocha, size: 32),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: isDefault
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.mocha.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'Default',
                  style: TextStyle(
                    color: AppTheme.mocha,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : null,
        onTap: () {},
      ),
    );
  }
}
