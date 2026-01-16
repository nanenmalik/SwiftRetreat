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
          'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=800&q=80',
      amenities: ['Private Pool', 'Halal Food', 'Prayer Room', 'Family Only'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '101',
          name: 'Deluxe Room',
          description: 'Spacious room with a view of the desert dunes.',
          price: 250.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1611892440504-42a792e24d32?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed', 'Desert View', 'Free Wi-Fi'],
        ),
        RoomType(
          id: '102',
          name: 'Royal Villa',
          description:
              'Private villa with your own temperature-controlled pool.',
          price: 550.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Private Pool', 'Butler Service', 'Majlis'],
        ),
      ],
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
      rooms: [
        RoomType(
          id: '201',
          name: 'Classic Room',
          description: 'Traditional Andalusian decor with modern amenities.',
          price: 180.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed', 'Courtyard View'],
        ),
        RoomType(
          id: '202',
          name: 'Alhambra Suite',
          description: 'Luxury suite overlooking the Alhambra.',
          price: 320.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1591088398332-8a7791972843?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed', 'Panoramic View', 'Jacuzzi'],
        ),
      ],
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
      rooms: [
        RoomType(
          id: '301',
          name: 'Garden Villa',
          description: 'Peaceful villa surrounded by tropical gardens.',
          price: 120.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1566665797739-1674de7a421a?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Private Garden', 'Gazebo'],
        ),
        RoomType(
          id: '302',
          name: 'Oceanfront Suite',
          description: 'Direct access to the beach with stunning sunset views.',
          price: 200.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Ocean View', 'Private Terrace'],
        ),
      ],
    ),
  ];

  static Map<String, String> mockUsers = {
    'test@swiftretreat.com': 'Password123!',
  };
}
