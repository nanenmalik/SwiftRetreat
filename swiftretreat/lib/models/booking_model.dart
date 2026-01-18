import 'hotel_model.dart';

enum BookingStatus { upcoming, completed, cancelled }

class Booking {
  final String id;
  final Hotel hotel;
  final RoomType? room;
  final DateTime checkIn;
  final DateTime checkOut;
  final int guests;
  final double totalPrice;
  BookingStatus status;
  final String guestName;
  final String guestPhone;

  Booking({
    required this.id,
    required this.hotel,
    this.room,
    required this.checkIn,
    required this.checkOut,
    required this.guests,
    required this.totalPrice,
    this.status = BookingStatus.upcoming,
    required this.guestName,
    required this.guestPhone,
  });
}
