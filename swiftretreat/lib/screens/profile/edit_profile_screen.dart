import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;

  bool _initialized = false;
  final String _imageUrl =
      'data:image/jpeg;base64,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';

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      final args =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      if (args != null) {
        _nameController.text = args['name'] ?? 'Adli Wahid';
        _emailController.text = args['email'] ?? 'adli@example.com';
        _phoneController.text = args['phone'] ?? '+60 12-345 6789';
      } else {
        // Fallbacks if no args passed (e.g. direct nav/testing)
        _nameController.text = 'Adli Wahid';
        _emailController.text = 'adli@example.com';
        _phoneController.text = '+60 12-345 6789';
      }
      _initialized = true;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppTheme.mocha,
                      backgroundImage: const NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_R4S4j_-Ii4yXXo5eCYiwhO66hb0Ez9a1dQ&s',
                      ),
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: AppTheme.terracotta,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  prefixIcon: Icon(Icons.person_outline),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone_outlined),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(context, {
                        'name': _nameController.text,
                        'email': _emailController.text,
                        'phone': _phoneController.text,
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Profile updated successfully!'),
                        ),
                      );
                    }
                  },
                  child: const Text('Save Changes'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
