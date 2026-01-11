import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home/home_screen.dart';
import 'models/hotel_model.dart'; // Import Hotel model
import 'screens/detail/room_detail_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/booking/booking_screen.dart';
import 'screens/payment/payment_screen.dart';

void main() {
  runApp(const SwiftRetreatApp());
}

class SwiftRetreatApp extends StatelessWidget {
  const SwiftRetreatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swift Retreat',
      theme: AppTheme.bohemianTheme,
      initialRoute: '/login',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/payment': (context) => const PaymentScreen(), // Add Payment route
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
        }
        return null; // Let other routes handle it
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
