import 'package:flutter/material.dart';
import '../../models/hotel_model.dart';
import '../../models/booking_model.dart';
import '../../theme/app_theme.dart';

class BookingScreen extends StatefulWidget {
  final Hotel hotel;
  final RoomType? room;

  const BookingScreen({super.key, required this.hotel, this.room});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime? _checkInDate;
  DateTime? _checkOutDate;
  int _guests = 1;

  final _formKey = GlobalKey<FormState>();
  // Controllers for guest details if we want to pre-fill or edit
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  Future<void> _selectDate(BuildContext context, bool isCheckIn) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: AppTheme.bohemianTheme.copyWith(
            colorScheme: AppTheme.bohemianTheme.colorScheme.copyWith(
              onPrimary: Colors.white, // Selected text color
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        if (isCheckIn) {
          _checkInDate = picked;
        } else {
          _checkOutDate = picked;
        }
      });
    }
  }

  Widget _buildDateTile(String label, DateTime? date) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppTheme.darkCream),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          const SizedBox(height: 4),
          Text(
            date == null
                ? 'Select Date'
                : '${date.day}/${date.month}/${date.year}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Booking'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hotel Summary
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        widget.room?.imageUrls.isNotEmpty == true
                            ? widget.room!.imageUrls.first
                            : widget.hotel.imageUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey[200],
                          child: const Icon(Icons.hotel, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.hotel.name,
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          if (widget.room != null)
                            Text(
                              widget.room!.name,
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    color: AppTheme.mocha,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          const SizedBox(height: 4),
                          Text(
                            widget.hotel.location,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '\$${(widget.room?.price ?? widget.hotel.pricePerNight).toInt()} / night',
                            style: TextStyle(
                              color: AppTheme.mocha,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              Text(
                'Your Trip',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Date Selection
              LayoutBuilder(
                builder: (context, constraints) {
                  final isNarrow = constraints.maxWidth < 350;
                  final children = [
                    if (isNarrow)
                      GestureDetector(
                        onTap: () => _selectDate(context, true),
                        child: _buildDateTile('Check-in', _checkInDate),
                      )
                    else
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _selectDate(context, true),
                          child: _buildDateTile('Check-in', _checkInDate),
                        ),
                      ),
                    SizedBox(
                      width: isNarrow ? 0 : 16,
                      height: isNarrow ? 16 : 0,
                    ),
                    if (isNarrow)
                      GestureDetector(
                        onTap: () => _selectDate(context, false),
                        child: _buildDateTile('Check-out', _checkOutDate),
                      )
                    else
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _selectDate(context, false),
                          child: _buildDateTile('Check-out', _checkOutDate),
                        ),
                      ),
                  ];

                  return isNarrow
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: children,
                        )
                      : Row(children: children);
                },
              ),

              const SizedBox(height: 24),

              // Guests
              Text('Guests', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.darkCream),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final isNarrow = constraints.maxWidth < 300;
                    return Flex(
                      direction: isNarrow ? Axis.vertical : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: isNarrow
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        const Text('Number of Guests'),
                        if (isNarrow) const SizedBox(height: 8),
                        Row(
                          mainAxisSize: isNarrow
                              ? MainAxisSize.max
                              : MainAxisSize.min,
                          mainAxisAlignment: isNarrow
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                if (_guests > 1) {
                                  setState(() => _guests--);
                                }
                              },
                              icon: const Icon(Icons.remove),
                            ),
                            Text(
                              '$_guests',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() => _guests++);
                              },
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),

              const SizedBox(height: 32),

              // Guest Details Form (Simplified)
              Text(
                'Guest Details',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Full Name'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            if (_checkInDate == null || _checkOutDate == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please select check-in and check-out dates'),
                ),
              );
              return;
            }
            if (_checkOutDate!.isBefore(_checkInDate!)) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Check-out date must be after check-in date'),
                ),
              );
              return;
            }

            if (_formKey.currentState!.validate()) {
              final double pricePerNight =
                  widget.room?.price ?? widget.hotel.pricePerNight;
              final int nights = _checkOutDate!
                  .difference(_checkInDate!)
                  .inDays;
              // Ensure at least 1 night
              final int actualNights = nights < 1 ? 1 : nights;
              final double totalPrice = pricePerNight * actualNights;

              final booking = Booking(
                id: DateTime.now().millisecondsSinceEpoch.toString(),
                hotel: widget.hotel,
                room: widget.room,
                checkIn: _checkInDate!,
                checkOut: _checkOutDate!,
                guests: _guests,
                totalPrice: totalPrice,
                guestName: _nameController.text,
                guestPhone: _phoneController.text,
                status: BookingStatus.upcoming,
              );

              Navigator.pushNamed(context, '/payment', arguments: booking);
            }
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: MediaQuery.of(context).size.width < 400
              ? const Icon(Icons.arrow_forward)
              : const Text('Continue to Payment'),
        ),
      ),
    );
  }
}
