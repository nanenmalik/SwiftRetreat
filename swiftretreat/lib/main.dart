import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'theme/app_theme.dart';
import 'screens/home/home_screen.dart';
import 'models/hotel_model.dart'; // Import Hotel model
import 'screens/detail/room_detail_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/auth/auth_wrapper.dart';
import 'screens/booking/booking_screen.dart';
import 'screens/payment/payment_screen.dart';
import 'screens/profile/edit_profile_screen.dart';
import 'screens/profile/payment_methods_screen.dart';
import 'screens/profile/settings_screen.dart';
import 'screens/profile/help_support_screen.dart';
import 'screens/destination/destination_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const SwiftRetreatApp());
}

class SwiftRetreatApp extends StatelessWidget {
  const SwiftRetreatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swift Retreat',
      theme: AppTheme.bohemianTheme,
      darkTheme: null,
      themeMode: ThemeMode.light,
      home: const AuthWrapper(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/payment': (context) => const PaymentScreen(),
        '/edit-profile': (context) => const EditProfileScreen(),
        '/payment-methods': (context) => const PaymentMethodsScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/help': (context) => const HelpSupportScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final hotel = settings.arguments as Hotel;
          return MaterialPageRoute(
            builder: (context) => RoomDetailScreen(hotel: hotel),
          );
        } else if (settings.name == '/booking') {
          Hotel hotel;
          RoomType? room;

          if (settings.arguments is Hotel) {
            hotel = settings.arguments as Hotel;
          } else if (settings.arguments is Map) {
            final args = settings.arguments as Map<String, dynamic>;
            hotel = args['hotel'] as Hotel;
            room = args['room'] as RoomType?;
          } else {
            // Fallback or error handling
            return null;
          }

          return MaterialPageRoute(
            builder: (context) => BookingScreen(hotel: hotel, room: room),
          );
        } else if (settings.name == '/destination') {
          String destinationName = 'Bali, Indonesia';
          double minPrice = 0;
          double maxPrice = 10000;
          int rating = 0;
          List<String> facilities = [];

          if (settings.arguments is Map) {
            final args = settings.arguments as Map<String, dynamic>;
            destinationName = args['destination'] ?? 'Bali, Indonesia';
            minPrice = (args['minPrice'] ?? 0).toDouble();
            maxPrice = (args['maxPrice'] ?? 10000).toDouble();
            rating = args['rating'] ?? 0;
            facilities =
                (args['facilities'] as List<dynamic>?)
                    ?.map((e) => e.toString())
                    .toList() ??
                [];
          } else if (settings.arguments is String) {
            destinationName = settings.arguments as String;
          }

          return MaterialPageRoute(
            builder: (context) => DestinationScreen(
              destinationName: destinationName,
              minPrice: minPrice,
              maxPrice: maxPrice,
              rating: rating,
              facilities: facilities,
            ),
          );
        }
        return null; // Let other routes handle it
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
