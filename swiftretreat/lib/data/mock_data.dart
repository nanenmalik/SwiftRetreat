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
    Hotel(
      id: '4',
      name: 'Ottoman Splendor',
      location: 'Istanbul, Turkey',
      rating: 4.7,
      pricePerNight: 160.0,
      imageUrl:
          'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?auto=format&fit=crop&w=800&q=80', // Placeholder
      amenities: ['Bosphorus View', 'Turkish Bath', 'Halal Dining'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '401',
          name: 'Sultan Suite',
          description: 'Luxurious suite with partial sea view.',
          price: 160.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1618773928121-c32242e63f39?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed', 'City View'],
        ),
      ],
    ),
    Hotel(
      id: '5',
      name: 'Sakura Zen Ryokan',
      location: 'Kyoto, Japan',
      rating: 4.9,
      pricePerNight: 280.0,
      imageUrl:
          'https://images.unsplash.com/photo-1542051841857-5f90071e7989?auto=format&fit=crop&w=800&q=80',
      amenities: ['Onsen', 'Tea Ceremony', 'Zen Garden'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '501',
          name: 'Tatami Room',
          description: 'Traditional room with futon bedding.',
          price: 280.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590073242678-cfeea86f527c?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Futon Bed', 'Garden View', 'Tea Set'],
        ),
      ],
    ),
    Hotel(
      id: '6',
      name: 'Azure Lagoon Villas',
      location: 'Male, Maldives',
      rating: 5.0,
      pricePerNight: 600.0,
      imageUrl:
          'https://images.unsplash.com/photo-1514282401047-d77a7149ba6f?auto=format&fit=crop&w=800&q=80',
      amenities: ['Overwater Villa', 'Private Pool', 'Snorkeling'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '601',
          name: 'Water Villa',
          description: 'Villa perched above the crystal clear lagoon.',
          price: 600.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1439066615861-d1fb8bc3a786?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed', 'Direct Ocean Access', 'Glass Floor'],
        ),
      ],
    ),
    Hotel(
      id: '7',
      name: 'The Royal Kensington',
      location: 'London, UK',
      rating: 4.5,
      pricePerNight: 350.0,
      imageUrl:
          'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=800&q=80', // Placeholder
      amenities: ['High Tea', 'City Center', 'Concierge'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '701',
          name: 'Executive Room',
          description: 'Modern room in the heart of London.',
          price: 350.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed', 'City View', 'Work Desk'],
        ),
      ],
    ),
    Hotel(
      id: '8',
      name: 'Alpine Bliss Lodge',
      location: 'Zermatt, Switzerland',
      rating: 4.8,
      pricePerNight: 420.0,
      imageUrl:
          'https://images.unsplash.com/photo-1519659528534-7fd733a832a0?auto=format&fit=crop&w=800&q=80',
      amenities: ['Ski-in/Ski-out', 'Fireplace', 'Mountain View'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '801',
          name: 'Chalet Suite',
          description: 'Cozy suite with view of the Matterhorn.',
          price: 420.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1542718610-a1d656d1884c?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed', 'Balcony', 'Hot Cocoa Bar'],
        ),
      ],
    ),
    Hotel(
      id: '9',
      name: 'Riad Jasmine',
      location: 'Marrakech, Morocco',
      rating: 4.6,
      pricePerNight: 130.0,
      imageUrl:
          'https://images.unsplash.com/photo-1539020140153-e479b8c22e70?auto=format&fit=crop&w=800&q=80',
      amenities: ['Central Courtyard', 'Traditional Breakfast', 'Hammam'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '901',
          name: 'Pasha Room',
          description: 'Authentic Moroccan decor with colorful tiles.',
          price: 130.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1598928506311-c55ded91a20c?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed', 'Mosaic Bath'],
        ),
      ],
    ),
    Hotel(
      id: '10',
      name: 'Urban Heights',
      location: 'New York, USA',
      rating: 4.5,
      pricePerNight: 300.0,
      imageUrl:
          'https://images.unsplash.com/photo-1496417263034-38ec4f0d6b21?auto=format&fit=crop&w=800&q=80',
      amenities: ['Rooftop Lounge', 'Gym', 'Subway Access'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '1001',
          name: 'Skyline Loft',
          description: 'Industrial chic loft with Manhattan views.',
          price: 300.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed', 'Floor-to-Ceiling Windows'],
        ),
      ],
    ),
    Hotel(
      id: '11',
      name: 'Coral Reef Resort',
      location: 'Queensland, Australia',
      rating: 4.9,
      pricePerNight: 450.0,
      imageUrl:
          'https://images.unsplash.com/photo-1588880331179-bc9b93a8cb5e?auto=format&fit=crop&w=800&q=80',
      amenities: ['Private Beach', 'Diving Center', 'Eco-Friendly'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '1101',
          name: 'Beach Bungalow',
          description: 'Steps away from the sand and sea.',
          price: 450.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1510798831971-661eb04b3739?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed', 'Outdoor Shower', 'Hammock'],
        ),
      ],
    ),
    Hotel(
      id: '12',
      name: 'Phuket Palm Paradise',
      location: 'Phuket, Thailand',
      rating: 4.4,
      pricePerNight: 90.0,
      imageUrl:
          'https://images.unsplash.com/photo-1586611292717-f828b167408c?auto=format&fit=crop&w=800&q=80',
      amenities: ['Infinity Pool', 'Thai Massage', 'Halal Kitchen'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '1201',
          name: 'Poolside Suite',
          description: 'Direct access to the main pool.',
          price: 90.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed', 'Terrace'],
        ),
      ],
    ),
  ];

  static Map<String, String> mockUsers = {
    'test@swiftretreat.com': 'Password123!',
  };
}
