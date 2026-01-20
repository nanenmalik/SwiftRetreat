import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../data/mock_data.dart';
import '../../models/hotel_model.dart';
import 'widgets/hotel_card.dart';

import '../bookings/my_bookings_screen.dart';
import '../profile/profile_screen.dart';
import 'widgets/filter_bottom_sheet.dart';
import '../chat/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomeContent(onProfileTap: _onItemTapped),
      const MyBookingsScreen(),
      const ChatScreen(),
      const ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatScreen()),
          );
        },
        backgroundColor: AppTheme.mocha,
        child: const Icon(Icons.chat, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppTheme.mocha,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  final Function(int)? onProfileTap;

  const HomeContent({super.key, this.onProfileTap});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  late TextEditingController _searchController;
  String _searchQuery = '';

  DateTime? _checkInDate;
  DateTime? _checkOutDate;
  int _numberOfPersons = 1;
  RangeValues _priceRange = const RangeValues(100, 1000);
  // bool _hasSearched = false; // Removed unused

  late List<Hotel> _popularHotels;
  late List<Hotel> _recommendedHotels;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();

    // Sort hotels by rating descending
    final sortedHotels = List<Hotel>.from(MockData.hotels)
      ..sort((a, b) => b.rating.compareTo(a.rating));

    // Take top 10 for popular
    if (sortedHotels.length > 10) {
      _popularHotels = sortedHotels.sublist(0, 10);
      // For recommended, we can either use the rest, or a mix.
      // User request implies splitting logic. Let's use the rest for recommended so no duplicates.
      // Or typically "Recommended" might just be "All" sorted differently.
      // Let's assume distinct lists for now as it feels cleaner for the "Split" request.
      _recommendedHotels = sortedHotels.sublist(10);
    } else {
      _popularHotels = sortedHotels;
      _recommendedHotels = [];
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Removed _filteredHotels and _showFilterDialog

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // Greeting Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Alpay',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppTheme.textDark,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Explore the world!',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => widget.onProfileTap?.call(2),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_R4S4j_-Ii4yXXo5eCYiwhO66hb0Ez9a1dQ&s',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Search Card
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Location Input
                  _buildSearchField(
                    context,
                    icon: Icons.search,
                    label: 'Location',
                    value: _searchQuery.isEmpty
                        ? 'Where are you going?'
                        : _searchQuery,
                    onTap: () {
                      // Focus logic or separate dialog
                      // For simplicity, using a dialog to set location
                      // Extract unique locations
                      final locations =
                          MockData.hotels
                              .map((h) => h.location)
                              .toSet()
                              .toList()
                            ..sort();

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Select Destination'),
                            content: SizedBox(
                              width: double.maxFinite,
                              child: ListView.separated(
                                shrinkWrap: true,
                                itemCount: locations.length,
                                separatorBuilder: (context, index) =>
                                    const Divider(),
                                itemBuilder: (context, index) {
                                  final location = locations[index];
                                  return ListTile(
                                    title: Text(
                                      location,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyLarge,
                                    ),
                                    onTap: () {
                                      setState(() => _searchQuery = location);
                                      Navigator.pop(context);
                                    },
                                    trailing: _searchQuery == location
                                        ? const Icon(
                                            Icons.check,
                                            color: AppTheme.primaryTeal,
                                          )
                                        : null,
                                  );
                                },
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Cancel'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    isPlaceholder: _searchQuery.isEmpty,
                  ),
                  const Divider(height: 30),

                  // Filter Input
                  _buildSearchField(
                    context,
                    icon: Icons.tune,
                    label: 'Filter',
                    value: 'Price, Ratings',
                    onTap: () async {
                      await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return FilterBottomSheet(
                            initialPriceRange: _priceRange,
                            onApply: (filters) {
                              setState(() {
                                if (filters['minPrice'] != null) {
                                  _priceRange = RangeValues(
                                    filters['minPrice'],
                                    filters['maxPrice'],
                                  );
                                }
                                Navigator.pushNamed(
                                  context,
                                  '/destination',
                                  arguments: {
                                    'destination':
                                        filters['location'] ?? 'San Diego',
                                    'minPrice': filters['minPrice'],
                                    'maxPrice': filters['maxPrice'],
                                    'rating': filters['rating'],
                                    'facilities': filters['facilities'],
                                  },
                                );
                              });
                            },
                          );
                        },
                      );
                    },
                    isPlaceholder: false,
                  ),
                  const SizedBox(height: 16),
                  const Divider(height: 30),

                  // Date Input
                  Row(
                    children: [
                      Expanded(
                        child: _buildSearchField(
                          context,
                          icon: Icons.calendar_today_outlined,
                          label: 'Date',
                          value: _checkInDate == null
                              ? 'Select Date'
                              : '${_checkInDate!.day} ${_monthName(_checkInDate!.month)} - ${_checkOutDate?.day ?? "?"}',
                          onTap: () async {
                            final picked = await showDateRangePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now().add(
                                const Duration(days: 365),
                              ),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: const ColorScheme.light(
                                      primary: AppTheme.primaryTeal,
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );
                            if (picked != null) {
                              setState(() {
                                _checkInDate = picked.start;
                                _checkOutDate = picked.end;
                              });
                            }
                          },
                          isPlaceholder: _checkInDate == null,
                        ),
                      ),
                      Container(width: 1, height: 40, color: Colors.grey[200]),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Guests',
                                    style: TextStyle(color: Colors.grey[500], fontSize: 12),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '$_numberOfPersons',
                                    style: TextStyle(
                                      color: AppTheme.textDark,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (_numberOfPersons > 1) _numberOfPersons--;
                                      });
                                    },
                                    child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey[300]!,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: const Icon(
                                        Icons.remove,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (_numberOfPersons < 10) _numberOfPersons++;
                                      });
                                    },
                                    child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey[300]!,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Search Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to Destination Screen with the query
                        Navigator.pushNamed(
                          context,
                          '/destination',
                          arguments: {
                            'destination': _searchQuery.isEmpty
                                ? 'Bali, Indonesia'
                                : _searchQuery,
                            'minPrice': _priceRange.start,
                            'maxPrice': _priceRange.end,
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryTeal,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Most Popular Hotels Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              child: Text(
                'Most Popular Hotels',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textDark,
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              height: 500,
              padding: const EdgeInsets.only(top: 16, bottom: 24),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: _popularHotels.length,
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 280,
                    child: HotelCard(
                      hotel: _popularHotels[index],
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/detail',
                          arguments: _popularHotels[index],
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),

          // Recommended Hotels Section (formerly Popular Destinations)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
              child: Text(
                'Recommended Hotels',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textDark,
                ),
              ),
            ),
          ),

          // Vertical Grid of Hotels (3 Columns)
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                mainAxisExtent: 500,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                final hotel = _recommendedHotels[index];
                return HotelCard(
                  hotel: hotel,
                  onTap: () {
                    Navigator.pushNamed(context, '/detail', arguments: hotel);
                  },
                );
              }, childCount: _recommendedHotels.length),
            ),
          ),

          const SliverPadding(padding: EdgeInsets.only(bottom: 24)),
        ],
      ),
    );
  }

  Widget _buildSearchField(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
    required bool isPlaceholder,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppTheme.backgroundGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: AppTheme.primaryTeal, size: 20),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(color: Colors.grey[500], fontSize: 12),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(
                  color: isPlaceholder ? Colors.grey[400] : AppTheme.textDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _monthName(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month - 1];
  }
}
