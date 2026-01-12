import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../data/booking_service.dart';
import '../../models/booking_model.dart';
import 'package:intl/intl.dart';

class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {
  final _bookingService = BookingService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bookings'),
        automaticallyImplyLeading: false,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              labelColor: AppTheme.mocha,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppTheme.mocha,
              tabs: [
                Tab(text: 'Upcoming'),
                Tab(text: 'Completed'),
                Tab(text: 'Cancelled'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Upcoming
                  _buildBookingList(
                    _bookingService.upcomingBookings,
                    'Upcoming',
                    Colors.blue,
                  ),
                  // Completed
                  _buildBookingList(
                    _bookingService.completedBookings,
                    'Completed',
                    Colors.green,
                  ),
                  // Cancelled
                  _buildBookingList(
                    _bookingService.cancelledBookings,
                    'Cancelled',
                    Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookingList(
    List<Booking> bookings,
    String statusLabel,
    Color color,
  ) {
    if (bookings.isEmpty) {
      return Center(child: Text('No $statusLabel bookings'));
    }
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: bookings.length,
      itemBuilder: (context, index) {
        return _buildBookingCard(context, bookings[index], statusLabel, color);
      },
    );
  }

  Widget _buildBookingCard(
    BuildContext context,
    Booking booking,
    String statusLabel,
    Color statusColor,
  ) {
    final dateFormat = DateFormat('dd MMM');

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    booking.hotel.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 60,
                        height: 60,
                        color: Colors.grey[300],
                        child: const Icon(Icons.hotel, color: Colors.grey),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        booking.hotel.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      if (booking.room != null)
                        Text(
                          booking.room!.name,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      const SizedBox(height: 4),
                      Text(
                        '${dateFormat.format(booking.checkIn)} - ${dateFormat.format(booking.checkOut)}',
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: statusColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          statusLabel,
                          style: TextStyle(
                            color: statusColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$${booking.totalPrice.toInt()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.mocha,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Could show details
                  },
                  child: const Text('View Booking'),
                ),
                if (statusLabel == 'Upcoming')
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.terracotta,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _showCancelDialog(context, booking);
                    },
                    child: const Text('Cancel Booking'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showCancelDialog(BuildContext context, Booking booking) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cancel Booking?'),
        content: const Text('Are you sure you want to cancel this booking?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bookingService.cancelBooking(booking.id);
              });
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Booking cancelled')),
              );
            }, // Close dialog
            child: const Text('Yes, Cancel'),
          ),
        ],
      ),
    );
  }
}
