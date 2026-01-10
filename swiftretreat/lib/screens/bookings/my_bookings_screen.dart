import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../data/mock_data.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for bookings
    final upcomingBooking = MockData.hotels[0];
    final completedBooking = MockData.hotels[1];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bookings'),
        automaticallyImplyLeading: false, // Hide back button as it's a tab
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
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildBookingCard(
                        context,
                        upcomingBooking,
                        'Upcoming',
                        Colors.blue,
                      ),
                    ],
                  ),
                  // Completed
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildBookingCard(
                        context,
                        completedBooking,
                        'Completed',
                        Colors.green,
                      ),
                    ],
                  ),
                  // Cancelled
                  const Center(child: Text('No cancelled bookings')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookingCard(
    BuildContext context,
    hotel,
    String status,
    Color statusColor,
  ) {
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
                    hotel.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotel.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '12 Mar - 14 Mar', // Mock date
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
                          status,
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
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('View Ticket'),
                ),
                if (status == 'Upcoming')
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.terracotta,
                    ),
                    onPressed: () {},
                    child: const Text('Cancel Booking'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
