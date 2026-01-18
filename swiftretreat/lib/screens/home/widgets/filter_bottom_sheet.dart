import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';
import '../../../models/hotel_model.dart';

class FilterBottomSheet extends StatefulWidget {
  final RangeValues initialPriceRange;
  final Function(Map<String, dynamic>?) onApply; // Changed from List<Hotel>
  final List<Hotel> allHotels;

  const FilterBottomSheet({
    super.key,
    required this.initialPriceRange,
    required this.onApply,
    required this.allHotels,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late RangeValues _priceRange;
  int _selectedRating = 5;

  @override
  void initState() {
    super.initState();
    _priceRange = widget.initialPriceRange;
  }

  List<Hotel> _filterHotels() {
    return widget.allHotels.where((hotel) {
      // Filter by price range
      bool priceMatch =
          hotel.pricePerNight >= _priceRange.start &&
          hotel.pricePerNight <= _priceRange.end;

      // Filter by rating (0 means no filter)
      bool ratingMatch =
          _selectedRating == 0 || hotel.rating >= _selectedRating;

      return priceMatch && ratingMatch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
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
                  // Price Range
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSectionTitle('Price'),
                      Text(
                        '\$${_priceRange.start.toInt()}-\$${_priceRange.end.toInt()}',
                        style: TextStyle(
                          color: AppTheme.primaryTeal.withValues(alpha: 0.7),
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

                  const SizedBox(height: 16),

                  // Ratings
                  _buildSectionTitle('Ratings'),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRatingButton(0, 'All'),
                      _buildRatingButton(5, '5'),
                      _buildRatingButton(4, '4'),
                      _buildRatingButton(3, '3'),
                      _buildRatingButton(2, '2'),
                    ],
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
                  'rating': _selectedRating,
                });
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2B57C2),
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

  Widget _buildRatingButton(int rating, String label) {
    final isSelected = _selectedRating == rating;
    return GestureDetector(
      onTap: () => setState(() => _selectedRating = rating),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? const Color(0xFF2B57C2) : Colors.grey[200]!,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: rating == 0
            ? Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textDark,
                ),
              )
            : Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                  const SizedBox(width: 4),
                  Text(
                    label,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textDark,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
