import '../models/hotel_model.dart';

class MockData {
  static List<Hotel> hotels = [
    Hotel(
      id: '1',
      name: 'Sahra Oasis Resort',
      location: 'Dubai, UAE',
      rating: 4.8,
      pricePerNight: 250.0,
      imageUrl:
          'https://images.unsplash.com/photo-1571896349842-6e5c48dc52e3', // Placeholder from Unsplash
      amenities: ['Private Pool', 'Halal Food', 'Prayer Room', 'Family Only'],
      isShariahCompliant: true,
    ),
    Hotel(
      id: '2',
      name: 'Al-Andalus Retreat',
      location: 'Granada, Spain',
      rating: 4.6,
      pricePerNight: 180.0,
      imageUrl: 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4',
      amenities: ['Halal Food', 'Mosque Nearby', 'Alcohol-Free'],
      isShariahCompliant: true,
    ),
    Hotel(
      id: '3',
      name: 'Nusantara Haven',
      location: 'Bali, Indonesia',
      rating: 4.9,
      pricePerNight: 120.0,
      imageUrl: 'https://images.unsplash.com/photo-1540541338287-41700207dee6',
      amenities: ['Private Villa', 'Halal Kitchen', 'Qibla Direction'],
      isShariahCompliant: true,
    ),
  ];
}
