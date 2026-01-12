import '../models/booking_model.dart';

import 'mock_data.dart';

class BookingService {
  // Singleton pattern
  static final BookingService _instance = BookingService._internal();

  factory BookingService() {
    return _instance;
  }

  BookingService._internal() {
    _initializeMockData();
  }

  final List<Booking> _bookings = [];

  List<Booking> get bookings => _bookings;

  void addBooking(Booking booking) {
    _bookings.add(booking);
  }

  void cancelBooking(String id) {
    final index = _bookings.indexWhere((b) => b.id == id);
    if (index != -1) {
      _bookings[index].status = BookingStatus.cancelled;
    }
  }

  List<Booking> get upcomingBookings =>
      _bookings.where((b) => b.status == BookingStatus.upcoming).toList()
        ..sort((a, b) => a.checkIn.compareTo(b.checkIn));

  List<Booking> get completedBookings =>
      _bookings.where((b) => b.status == BookingStatus.completed).toList()
        ..sort((a, b) => b.checkIn.compareTo(a.checkIn));

  List<Booking> get cancelledBookings =>
      _bookings.where((b) => b.status == BookingStatus.cancelled).toList()
        ..sort((a, b) => b.checkIn.compareTo(a.checkIn));

  void _initializeMockData() {
    // Add some initial mock bookings if the list is empty
    if (_bookings.isEmpty && MockData.hotels.length >= 2) {
      _bookings.add(
        Booking(
          id: 'mock_1',
          hotel: MockData.hotels[0], // First hotel
          checkIn: DateTime.now().add(const Duration(days: 5)),
          checkOut: DateTime.now().add(const Duration(days: 7)),
          guests: 2,
          totalPrice: MockData.hotels[0].pricePerNight * 2,
          status: BookingStatus.upcoming,
          guestName: 'Adli Wahid',
          guestPhone: '555-1234',
        ),
      );

      _bookings.add(
        Booking(
          id: 'mock_2',
          hotel: MockData.hotels[1], // Second hotel
          checkIn: DateTime.now().subtract(const Duration(days: 10)),
          checkOut: DateTime.now().subtract(const Duration(days: 8)),
          guests: 1,
          totalPrice: MockData.hotels[1].pricePerNight * 2,
          status: BookingStatus.completed,
          guestName: 'Adli Wahid',
          guestPhone: '555-1234',
        ),
      );
    }
  }
}
