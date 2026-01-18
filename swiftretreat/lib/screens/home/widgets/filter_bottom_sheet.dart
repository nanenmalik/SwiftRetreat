import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';

class FilterBottomSheet extends StatefulWidget {
  final RangeValues initialPriceRange;
  final Function(Map<String, dynamic>) onApply;

  const FilterBottomSheet({
    super.key,
    required this.initialPriceRange,
    required this.onApply,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late RangeValues _priceRange;
  int _guestCount =
      2; // Default from image: 3 Guest (2 Adult, 1 Children) - simplified for now
  bool _instantBook = false;
  String _selectedLocation = 'San Diego'; // Default selection
  final List<String> _locations = [
    'San Diego',
    'New York',
    'Amsterdam',
    'Bali',
  ];

  // Facilities
  final Map<String, bool> _facilities = {
    'Free Wifi': false,
    'Swimming Pool': false,
    'Tv': false,
    'Laundry': false,
  };

  int _selectedRating = 5;

  @override
  void initState() {
    super.initState();
    _priceRange = widget.initialPriceRange;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          // Drag Handle
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Header
          Text(
            'Filter By',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppTheme.textDark,
            ),
          ),
          const SizedBox(height: 24),

          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Placeholder / Guest Selection
                  _buildSectionTitle('Placeholder'),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]!),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$_guestCount Guest (${_guestCount > 1 ? "${_guestCount - 1} Adult, 1 Children" : "1 Adult"})',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Price Range
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSectionTitle('Price'),
                      Text(
                        '\$${_priceRange.start.toInt()}-\$${_priceRange.end.toInt()}',
                        style: TextStyle(
                          color: AppTheme.primaryTeal.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  RangeSlider(
                    values: _priceRange,
                    min: 0,
                    max: 2000,
                    divisions: 20,
                    activeColor: AppTheme.primaryTeal,
                    inactiveColor: Colors.blue[100],
                    onChanged: (values) {
                      setState(() => _priceRange = values);
                    },
                  ),
                  const SizedBox(height: 16),

                  // Instant Book
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSectionTitle('Instant Book'),
                          const SizedBox(height: 4),
                          Text(
                            'Book without waiting for the host to respond',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Switch(
                        value: _instantBook,
                        onChanged: (val) => setState(() => _instantBook = val),
                        activeColor: AppTheme.primaryTeal,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Location
                  _buildSectionTitle('Location'),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _locations.map((loc) {
                        final isSelected = _selectedLocation == loc;
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: GestureDetector(
                            onTap: () =>
                                setState(() => _selectedLocation = loc),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? const Color(0xFF2B57C2)
                                    : Colors
                                          .white, // Blue explicitly requested in design
                                border: Border.all(
                                  color: isSelected
                                      ? const Color(0xFF2B57C2)
                                      : Colors.grey[200]!,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                loc,
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : const Color(0xFF2B57C2),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Facilities
                  _buildSectionTitle('Facilities'),
                  const SizedBox(height: 12),
                  ..._facilities.entries.map((entry) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            entry.key,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: Checkbox(
                              value: entry.value,
                              activeColor: const Color(0xFF2B57C2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  _facilities[entry.key] = val ?? false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(height: 16),

                  // Ratings
                  _buildSectionTitle('Ratings'),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [5, 4, 3, 2, 1].map((rating) {
                      final isSelected = _selectedRating == rating;
                      return GestureDetector(
                        onTap: () => setState(() => _selectedRating = rating),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected
                                  ? const Color(0xFF2B57C2)
                                  : Colors.grey[200]!,
                              width: isSelected ? 2 : 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                rating.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.textDark,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),

          // Footer Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                widget.onApply({
                  'minPrice': _priceRange.start,
                  'maxPrice': _priceRange.end,
                  'location': _selectedLocation,
                  'rating': _selectedRating,
                  'facilities': _facilities.entries
                      .where((e) => e.value)
                      .map((e) => e.key)
                      .toList(),
                  // 'guests': _guestCount,
                  // 'instantBook': _instantBook,
                });
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2B57C2), // Match design blue
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Apply Filter',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppTheme.textDark,
      ),
    );
  }
}
