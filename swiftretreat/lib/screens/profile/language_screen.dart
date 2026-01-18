import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'English (US)';

  final List<String> _languages = [
    'English (US)',
    'English (UK)',
    'Spanish',
    'French',
    'German',
    'Italian',
    'Portuguese',
    'Chinese (Simplified)',
    'Japanese',
    'Korean',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Language')),
      body: ListView.builder(
        itemCount: _languages.length,
        itemBuilder: (context, index) {
          final language = _languages[index];
          return RadioListTile<String>(
            activeColor: AppTheme.mocha,
            title: Text(language),
            value: language,
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value ?? 'English (US)';
              });
              // TODO: Implement language change functionality
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Language changed to $value'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
          );
        },
      ),
    );
  }
}