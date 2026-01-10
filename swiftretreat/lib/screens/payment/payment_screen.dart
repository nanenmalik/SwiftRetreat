import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.payment, size: 80, color: AppTheme.mocha),
            const SizedBox(height: 24),
            Text(
              'Payment Gateway Mock',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 16),
            const Text('This is a simulated payment screen.'),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {
                // Simulate success
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Payment Successful'),
                    content: const Text('Your booking has been confirmed!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close dialog
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/',
                            (route) => false,
                          ); // Go home
                        },
                        child: const Text('Done'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
