import '../models/hotel_model.dart';
import '../models/destination_feature_models.dart';

class MockData {
  static final List<Review> _mockReviews = [
    Review(
      id: 'r1',
      username: 'Sarah Jenkins',
      rating: 5.0,
      comment:
          'Absolutely stunning! The views were breathtaking and the service was impeccable.',
      date: DateTime(2023, 10, 15),
    ),
    Review(
      id: 'r2',
      username: 'Ahmed Al-Farsi',
      rating: 4.5,
      comment:
          'Great halal options and very clean facilities. Will definitely return.',
      date: DateTime(2023, 11, 02),
    ),
    Review(
      id: 'r3',
      username: 'Emily Chen',
      rating: 5.0,
      comment:
          'A hidden gem. The room was spacious and the bed was super comfortable.',
      date: DateTime(2023, 09, 28),
    ),
    Review(
      id: 'r4',
      username: 'Michael Brown',
      rating: 4.0,
      comment:
          'Nice location, close to everything. Breakfast could be better though.',
      date: DateTime(2023, 12, 05),
    ),
    Review(
      id: 'r5',
      username: 'Fatima Zahra',
      rating: 5.0,
      comment: 'Perfect for a family vacation. The kids loved the pool!',
      date: DateTime(2023, 08, 12),
    ),
    Review(
      id: 'r6',
      username: 'John Doe',
      rating: 3.5,
      comment: 'Decent stay, but a bit overpriced for what you get.',
      date: DateTime(2023, 11, 20),
    ),
    Review(
      id: 'r7',
      username: 'Jessica Lim',
      rating: 5.0,
      comment:
          'The staff went above and beyond to make our anniversary special. Thank you!',
      date: DateTime(2023, 10, 05),
    ),
    Review(
      id: 'r8',
      username: 'Omar Hassan',
      rating: 4.8,
      comment:
          'Highly recommended for Muslim travelers. Prayer mats were provided promptly.',
      date: DateTime(2023, 12, 01),
    ),
    Review(
      id: 'r9',
      username: 'David Smith',
      rating: 4.2,
      comment: 'Good value for money. Clean and quiet.',
      date: DateTime(2023, 09, 15),
    ),
    Review(
      id: 'r10',
      username: 'Maria Garcia',
      rating: 4.7,
      comment: 'Beautiful decor and atmosphere. A truly relaxing experience.',
      date: DateTime(2023, 11, 10),
    ),
  ];

  static List<Food> foods = [
    Food(
      id: 'f1',
      name: 'Nasi Goreng Special',
      description: 'Authentic Indonesian fried rice served with satay.',
      imageUrl:
          'https://images.unsplash.com/photo-1603133872878-684f10842619?auto=format&fit=crop&w=800&q=80',
      rating: 4.8,
      location: 'Ubud, Bali',
      priceRange: '\$10 - \$15',
    ),
    Food(
      id: 'f2',
      name: 'Babi Guling (Halal Ver.)',
      description: 'Roasted chicken spiced with traditional herbs.',
      imageUrl:
          'https://images.unsplash.com/photo-1555126634-323283e090fa?auto=format&fit=crop&w=800&q=80',
      rating: 4.7,
      location: 'Seminyak, Bali',
      priceRange: '\$12 - \$18',
    ),
    Food(
      id: 'f3',
      name: 'Seafood Platter',
      description: 'Fresh catch from the Jimbaran coast.',
      imageUrl:
          'https://images.unsplash.com/photo-1599084993091-1e8b15d672b4?auto=format&fit=crop&w=800&q=80',
      rating: 4.9,
      location: 'Jimbaran, Bali',
      priceRange: '\$25 - \$40',
    ),
  ];

  static List<Activity> activities = [
    Activity(
      id: 'a1',
      name: 'Bali Jungle Swing',
      description: 'Experience the thrill of swinging over the jungle canopy.',
      imageUrl:
          'https://images.unsplash.com/photo-1596401057633-565632eb9a2f?auto=format&fit=crop&w=800&q=80',
      rating: 4.9,
      location: 'Ubud, Bali',
      price: 35.0,
    ),
    Activity(
      id: 'a2',
      name: 'Tanah Lot Sunset Tour',
      description: 'Visit the iconic temple on the sea at sunset.',
      imageUrl:
          'https://images.unsplash.com/photo-1537996194471-e657df975ab4?auto=format&fit=crop&w=800&q=80',
      rating: 4.8,
      location: 'Tabanan, Bali',
      price: 20.0,
    ),
    Activity(
      id: 'a3',
      name: 'Scuba Diving Nusa Penida',
      description: 'Dive with manta rays in crystal clear waters.',
      imageUrl:
          'https://images.unsplash.com/photo-1544551763-46a013bb70d5?auto=format&fit=crop&w=800&q=80',
      rating: 5.0,
      location: 'Nusa Penida, Bali',
      price: 85.0,
    ),
  ];

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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '101',
          name: 'Deluxe Room',
          description: 'Spacious room with a view of the desert dunes.',
          price: 250.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1611892440504-42a792e24d32?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?auto=format&fit=crop&w=800&q=80', // Bathroom
            'https://images.unsplash.com/photo-1545620857-8fb4928b9c23?auto=format&fit=crop&w=800&q=80', // Desert View
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
            'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?auto=format&fit=crop&w=800&q=80', // Living Area
            'https://images.unsplash.com/photo-1572331165267-854da2b00ca1?auto=format&fit=crop&w=800&q=80', // Private Pool
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '201',
          name: 'Classic Room',
          description: 'Traditional Andalusian decor with modern amenities.',
          price: 180.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560185007-c5ca9d2c014d?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1552321554-5fefe8c9ef14?auto=format&fit=crop&w=800&q=80', // Bathroom
          ],
          amenities: ['Queen Bed', 'Courtyard View'],
        ),
        RoomType(
          id: '202',
          name: 'Alhambra Suite',
          description: 'Luxury suite overlooking the Alhambra.',
          price: 320.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1591088398332-8a7791972843?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1560448205-4d9b3e6bb6db?auto=format&fit=crop&w=800&q=80', // View
            'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?auto=format&fit=crop&w=800&q=80', // Bathroom
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '301',
          name: 'Garden Villa',
          description: 'Peaceful villa surrounded by tropical gardens.',
          price: 120.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1566665797739-1674de7a421a?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1570214476695-3ca488153c13?auto=format&fit=crop&w=800&q=80', // Garden
          ],
          amenities: ['Private Garden', 'Gazebo'],
        ),
        RoomType(
          id: '302',
          name: 'Oceanfront Suite',
          description: 'Direct access to the beach with stunning sunset views.',
          price: 200.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=800&q=80', // Ocean View
            'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?auto=format&fit=crop&w=800&q=80', // Bathroom
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '401',
          name: 'Sultan Suite',
          description: 'Luxurious suite with partial sea view.',
          price: 160.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1618773928121-c32242e63f39?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1631049552057-403cdb8f0658?auto=format&fit=crop&w=800&q=80', // View
            'https://images.unsplash.com/photo-1552321554-5fefe8c9ef14?auto=format&fit=crop&w=800&q=80', // Bathroom
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '501',
          name: 'Tatami Room',
          description: 'Traditional room with futon bedding.',
          price: 280.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590073242678-cfeea86f527c?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1504961555562-b9b2b5248557?auto=format&fit=crop&w=800&q=80', // Tea Room
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '601',
          name: 'Water Villa',
          description: 'Villa perched above the crystal clear lagoon.',
          price: 600.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1439066615861-d1fb8bc3a786?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?auto=format&fit=crop&w=800&q=80', // Ocean Deck
            'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?auto=format&fit=crop&w=800&q=80', // Bathroom
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '701',
          name: 'Executive Room',
          description: 'Modern room in the heart of London.',
          price: 350.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1560448204-603b3fc33ddc?auto=format&fit=crop&w=800&q=80', // City View
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '801',
          name: 'Chalet Suite',
          description: 'Cozy suite with view of the Matterhorn.',
          price: 420.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1542718610-a1d656d1884c?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1519659528534-7fd733a832a0?auto=format&fit=crop&w=800&q=80', // Mountain View
            'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=800&q=80', // Fireplace
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '901',
          name: 'Pasha Room',
          description: 'Authentic Moroccan decor with colorful tiles.',
          price: 130.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1598928506311-c55ded91a20c?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1539020140153-e479b8c22e70?auto=format&fit=crop&w=800&q=80', // Courtyard
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1001',
          name: 'Skyline Loft',
          description: 'Industrial chic loft with Manhattan views.',
          price: 300.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?auto=format&fit=crop&w=800&q=80', // Loft View
            'https://images.unsplash.com/photo-1552321554-5fefe8c9ef14?auto=format&fit=crop&w=800&q=80', // Bathroom
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1101',
          name: 'Beach Bungalow',
          description: 'Steps away from the sand and sea.',
          price: 450.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1510798831971-661eb04b3739?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?auto=format&fit=crop&w=800&q=80', // Deck
            'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?auto=format&fit=crop&w=800&q=80', // Bathroom
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
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1201',
          name: 'Poolside Suite',
          description: 'Direct access to the main pool.',
          price: 90.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1586611292717-f828b167408c?auto=format&fit=crop&w=800&q=80', // Pool
          ],
          amenities: ['King Bed', 'Terrace'],
        ),
      ],
    ),
    // ---------------- NEW HOTELS ----------------
    Hotel(
      id: '13',
      name: 'Le Charme Parisien',
      location: 'Paris, France',
      rating: 4.7,
      pricePerNight: 400.0,
      imageUrl:
          'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?auto=format&fit=crop&w=800&q=80',
      amenities: ['Eiffel Tower View', 'Patisserie', 'Concierge'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1301',
          name: 'Seine Suite',
          description: 'Elegant suite with views of the Seine.',
          price: 400.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1550973886-a6e55c7a4ec3?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1543373014-cfe4f4bc1cdf?auto=format&fit=crop&w=800&q=80', // View
            'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?auto=format&fit=crop&w=800&q=80', // Bathroom
          ],
          amenities: ['King Bed', 'Balcony', 'Nespresso Machine'],
        ),
      ],
    ),
    Hotel(
      id: '14',
      name: 'Roman Heritage Suites',
      location: 'Rome, Italy',
      rating: 4.6,
      pricePerNight: 220.0,
      imageUrl:
          'https://images.unsplash.com/photo-1552832230-c0197dd311b5?auto=format&fit=crop&w=800&q=80',
      amenities: ['Colosseum View', 'Italian Breakfast', 'Rooftop Bar'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1401',
          name: 'Emperor Room',
          description: 'Classic Roman decor with marble finishes.',
          price: 220.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1525874684015-58379d421a52?auto=format&fit=crop&w=800&q=80', // Bathroom
          ],
          amenities: ['Queen Bed', 'Marble Bath'],
        ),
      ],
    ),
    Hotel(
      id: '15',
      name: 'Casa Batllo Views',
      location: 'Barcelona, Spain',
      rating: 4.8,
      pricePerNight: 280.0,
      imageUrl:
          'https://images.unsplash.com/photo-1558642084-d995b6c1c153?auto=format&fit=crop&w=800&q=80',
      amenities: ['Gaudi Architecture', 'Tapas Bar', 'City Center'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1501',
          name: 'Modernista Suite',
          description: 'Artistic suite inspired by Gaudi.',
          price: 280.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1629140727571-9b5c6f6267b4?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1512918760532-3c5b88019979?auto=format&fit=crop&w=800&q=80', // Living
          ],
          amenities: ['King Bed', 'Artistic Decor'],
        ),
      ],
    ),
    Hotel(
      id: '16',
      name: 'Nile Pharaohs Hotel',
      location: 'Cairo, Egypt',
      rating: 4.5,
      pricePerNight: 140.0,
      imageUrl:
          'https://images.unsplash.com/photo-1572252009289-9d53c6d94889?auto=format&fit=crop&w=800&q=80',
      amenities: ['Pyramids View', 'Nile Cruise', 'Halal Food'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1601',
          name: 'Pharaoh Suite',
          description: 'Direct view of the Great Pyramids.',
          price: 140.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560185127-6ed189bf02f4?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1503177119275-0aa32b3a9368?auto=format&fit=crop&w=800&q=80', // Pyramids View
          ],
          amenities: ['King Bed', 'Balcony'],
        ),
      ],
    ),
    Hotel(
      id: '17',
      name: 'Table Mountain Lodge',
      location: 'Cape Town, South Africa',
      rating: 4.7,
      pricePerNight: 190.0,
      imageUrl:
          'https://images.unsplash.com/photo-1580060839134-75a5edca2e99?auto=format&fit=crop&w=800&q=80',
      amenities: ['Mountain View', 'Safari Tours', 'Pool'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1701',
          name: 'Safari Room',
          description: 'Rustic luxury with modern comforts.',
          price: 190.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1583533810243-7f21d23b7e75?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1582719508461-905c673771fd?auto=format&fit=crop&w=800&q=80', // View
          ],
          amenities: ['Queen Bed', 'Deck'],
        ),
      ],
    ),
    Hotel(
      id: '18',
      name: 'Copacabana Palace Elite',
      location: 'Rio de Janeiro, Brazil',
      rating: 4.8,
      pricePerNight: 310.0,
      imageUrl:
          'https://images.unsplash.com/photo-1518684079-3c830dcef090?auto=format&fit=crop&w=800&q=80',
      amenities: ['Beachfront', 'Samba Lessons', 'Rooftop Pool'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1801',
          name: 'Ocean Suite',
          description: 'Overlooking the famous Copacabana beach.',
          price: 310.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360182-137d623412b3?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1519046904884-53103b34b206?auto=format&fit=crop&w=800&q=80', // Beach View
          ],
          amenities: ['King Bed', 'Ocean View'],
        ),
      ],
    ),
    Hotel(
      id: '19',
      name: 'Shinjuku Skyscraper Inn',
      location: 'Tokyo, Japan',
      rating: 4.6,
      pricePerNight: 200.0,
      imageUrl:
          'https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?auto=format&fit=crop&w=800&q=80',
      amenities: ['City View', 'Karaoke', 'Subway Access'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '1901',
          name: 'Metropolitan Room',
          description: 'Compact but high-tech room with city views.',
          price: 200.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560185007-c5ca9d2c014d?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?auto=format&fit=crop&w=800&q=80', // City View
          ],
          amenities: ['Queen Bed', 'Smart Control'],
        ),
      ],
    ),
    Hotel(
      id: '20',
      name: 'Taj Mahal Royal Stay',
      location: 'Agra, India',
      rating: 4.9,
      pricePerNight: 150.0,
      imageUrl:
          'https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=800&q=80',
      amenities: ['Taj View', 'Ayurvedic Spa', 'Fine Dining'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2001',
          name: 'Mughal Suite',
          description: 'Opulent suite with direct views of the Taj Mahal.',
          price: 150.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1548013146-72479768bada?auto=format&fit=crop&w=800&q=80', // Taj View
          ],
          amenities: ['King Bed', 'Butler Service'],
        ),
      ],
    ),
    Hotel(
      id: '21',
      name: 'Brandenburg Gate Hotel',
      location: 'Berlin, Germany',
      rating: 4.5,
      pricePerNight: 175.0,
      imageUrl:
          'https://images.unsplash.com/photo-1533240683050-891961448655?auto=format&fit=crop&w=800&q=80',
      amenities: ['Historic Center', 'Beer Garden', 'Bike Rental'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2101',
          name: 'Urban Twin',
          description: 'Modern room near historic landmarks.',
          price: 175.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1560969184-10fe8719e047?auto=format&fit=crop&w=800&q=80', // City View
          ],
          amenities: ['Twin Beds', 'City View'],
        ),
      ],
    ),
    Hotel(
      id: '22',
      name: 'Aegean Cliff Villas',
      location: 'Santorini, Greece',
      rating: 5.0,
      pricePerNight: 550.0,
      imageUrl:
          'https://images.unsplash.com/photo-1602343168117-bb8ffe3e2e9f?auto=format&fit=crop&w=800&q=80',
      amenities: ['Caldera View', 'Infinity Pool', 'Cave Room'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2201',
          name: 'Cave Suite',
          description: 'Traditional cave suite with private plunge pool.',
          price: 550.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1516455590571-18256e5bb9ff?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1570077188670-e3a8d69ac5ff?auto=format&fit=crop&w=800&q=80', // Pool
          ],
          amenities: ['King Bed', 'Sunset View'],
        ),
      ],
    ),
    Hotel(
      id: '23',
      name: 'Gangnam Style Suites',
      location: 'Seoul, South Korea',
      rating: 4.7,
      pricePerNight: 230.0,
      imageUrl:
          'https://images.unsplash.com/photo-1538688423619-a81d3f23454b?auto=format&fit=crop&w=800&q=80',
      amenities: ['K-Pop Theme', 'High Tech', 'Shopping'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2301',
          name: 'K-Suite',
          description: 'Trendy suite in the heart of Gangnam.',
          price: 230.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1552321554-5fefe8c9ef14?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1560448204-603b3fc33ddc?auto=format&fit=crop&w=800&q=80', // City View
          ],
          amenities: ['Queen Bed', 'Smart Mirror'],
        ),
      ],
    ),
    Hotel(
      id: '24',
      name: 'Nordic Aurora Hotel',
      location: 'Reykjavik, Iceland',
      rating: 4.8,
      pricePerNight: 300.0,
      imageUrl:
          'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=800&q=80',
      amenities: ['Northern Lights', 'Geothermal Spa', 'Bar'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2401',
          name: 'Aurora Room',
          description: 'Room with glass ceiling for sky gazing.',
          price: 300.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1549488497-2956cfb2d152?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?auto=format&fit=crop&w=800&q=80', // Sky View
          ],
          amenities: ['King Bed', 'Glass Ceiling'],
        ),
      ],
    ),
    Hotel(
      id: '25',
      name: 'Canal House Boutique',
      location: 'Amsterdam, Netherlands',
      rating: 4.6,
      pricePerNight: 210.0,
      imageUrl:
          'https://images.unsplash.com/photo-1585543805890-6051f7d16729?auto=format&fit=crop&w=800&q=80',
      amenities: ['Canal View', 'Bike Rental', 'Cheese Tasting'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2501',
          name: 'Canal View Room',
          description: 'Charming room overlooking the canal.',
          price: 210.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1523365280197-f1783db915af?auto=format&fit=crop&w=800&q=80', // Canal View
          ],
          amenities: ['Queen Bed', 'Espresso'],
        ),
      ],
    ),
    Hotel(
      id: '26',
      name: 'Pacific Rim Retreat',
      location: 'Vancouver, Canada',
      rating: 4.8,
      pricePerNight: 260.0,
      imageUrl:
          'https://images.unsplash.com/photo-1571474004502-c1def214ac6d?auto=format&fit=crop&w=800&q=80',
      amenities: ['Ocean View', 'Seaplane Tours', 'Sushi Bar'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2601',
          name: 'Harbour Room',
          description: 'Modern room with views of Coal Harbour.',
          price: 260.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1586611292717-f828b167408c?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1497366216548-37526070297c?auto=format&fit=crop&w=800&q=80', // Harbour View
          ],
          amenities: ['King Bed', 'Rain Shower'],
        ),
      ],
    ),
    Hotel(
      id: '27',
      name: 'Desert Rose Camp',
      location: 'Petra, Jordan',
      rating: 4.7,
      pricePerNight: 180.0,
      imageUrl:
          'https://images.unsplash.com/photo-1549449857-e85d41f3e8f8?auto=format&fit=crop&w=800&q=80',
      amenities: ['Bubble Tent', 'Bedouin Dinner', 'Stargazing'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2701',
          name: 'Martian Dome',
          description: 'Luxury panoramic dome in the desert.',
          price: 180.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=800&q=80', // Bed
            'https://images.unsplash.com/photo-1444465693019-aa0b6392460d?auto=format&fit=crop&w=800&q=80', // Desert View
          ],
          amenities: ['King Bed', 'AC', 'Private Deck'],
        ),
      ],
    ),
    Hotel(
      id: '28',
      name: 'Inca Trail Lodge',
      location: 'Cusco, Peru',
      rating: 4.6,
      pricePerNight: 160.0,
      imageUrl:
          'https://images.unsplash.com/photo-1587595431973-160d0d94add1?auto=format&fit=crop&w=800&q=80',
      amenities: ['Mountain View', 'Cocoa Tea', 'Hiking Guides'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2801',
          name: 'Andean Suite',
          description: 'Rustic suite with textiles from local artisans.',
          price: 160.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1512918760532-3c5b88019979?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1526392060635-9d6019884377?auto=format&fit=crop&w=800&q=80', // Mountain
          ],
          amenities: ['Full Bed', 'Fireplace'],
        ),
      ],
    ),
    Hotel(
      id: '29',
      name: 'Twin Towers View Hotel',
      location: 'Kuala Lumpur, Malaysia',
      rating: 4.5,
      pricePerNight: 110.0,
      imageUrl:
          'https://images.unsplash.com/photo-1577977695029-798835848bb2?auto=format&fit=crop&w=800&q=80',
      amenities: ['City Center', 'Infinity Pool', 'Halal Food'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '2901',
          name: 'Sky Room',
          description: 'Room with a clear view of the Petronas Towers.',
          price: 110.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1517736996303-4eec4a13ea17?auto=format&fit=crop&w=800&q=80', // KL Skyline
          ],
          amenities: ['Queen Bed', 'City View'],
        ),
      ],
    ),
    Hotel(
      id: '30',
      name: 'Pearl Island Resort',
      location: 'Doha, Qatar',
      rating: 4.9,
      pricePerNight: 350.0,
      imageUrl:
          'https://images.unsplash.com/photo-1514282401047-d77a7149ba6f?auto=format&fit=crop&w=800&q=80',
      amenities: ['Private Beach', 'Luxury Mall', 'Marina'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3001',
          name: 'Marina Suite',
          description: 'Suite overlooking the luxury yachts.',
          price: 350.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1566375638412-0797130761e3?auto=format&fit=crop&w=800&q=80', // Marina View
          ],
          amenities: ['King Bed', 'Balcony'],
        ),
      ],
    ),
    Hotel(
      id: '31',
      name: 'Old Town Heritage',
      location: 'Sarajevo, Bosnia',
      rating: 4.7,
      pricePerNight: 90.0,
      imageUrl:
          'https://images.unsplash.com/photo-1561501900-3701fa6a0864?auto=format&fit=crop&w=800&q=80',
      amenities: ['Bascharsija View', 'Halal Food', 'History Tour'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3101',
          name: 'Heritage Room',
          description: 'Traditional room near the Sebilj fountain.',
          price: 90.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1618773928121-c32242e63f39?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?auto=format&fit=crop&w=800&q=80', // Town View
          ],
          amenities: ['Queen Bed', 'City View'],
        ),
      ],
    ),
    Hotel(
      id: '32',
      name: 'Spice Island Beach Resort',
      location: 'Zanzibar, Tanzania',
      rating: 4.8,
      pricePerNight: 240.0,
      imageUrl:
          'https://images.unsplash.com/photo-1590523277543-a94d2e4eb00b?auto=format&fit=crop&w=800&q=80',
      amenities: ['White Sand Beach', 'Spice Tour', 'Diving'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3201',
          name: 'Ocean Bungalow',
          description: 'Bungalow right on the white sands.',
          price: 240.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1439066615861-d1fb8bc3a786?auto=format&fit=crop&w=800&q=80', // Bedroom
            'https://images.unsplash.com/photo-1590523741831-ab7e8b8f9c7f?auto=format&fit=crop&w=800&q=80', // Beach View
          ],
          amenities: ['King Bed', 'Mosquito Net', 'Terrace'],
        ),
      ],
    ),
    Hotel(
      id: '33',
      name: 'The Venetian canal',
      location: 'Venice, Italy',
      rating: 4.8,
      pricePerNight: 320.0,
      imageUrl:
          'https://images.unsplash.com/photo-1514890547357-a9ee288728e0?auto=format&fit=crop&w=800&q=80',
      amenities: ['Canal View', 'Gondola Service', 'Fine Dining'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3301',
          name: 'Canal Suite',
          description: 'Suite with canal view',
          price: 320.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '34',
      name: 'Tuscan Sun Villa',
      location: 'Florence, Italy',
      rating: 4.7,
      pricePerNight: 280.0,
      imageUrl:
          'https://images.unsplash.com/photo-1528114039593-43664da1a760?auto=format&fit=crop&w=800&q=80',
      amenities: ['Vineyard', 'Cooking Class', 'Pool'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3401',
          name: 'Vintage Room',
          description: 'Classic Tuscan room',
          price: 280.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '35',
      name: 'Milan Fashion Hotel',
      location: 'Milan, Italy',
      rating: 4.5,
      pricePerNight: 250.0,
      imageUrl:
          'https://images.unsplash.com/photo-1513581166391-887a96ddeafd?auto=format&fit=crop&w=800&q=80',
      amenities: ['Near Duomo', 'Shopping Service', 'Spa'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3501',
          name: 'Fashion Suite',
          description: 'Stylish modern suite',
          price: 250.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '36',
      name: 'Riviera Blue',
      location: 'Nice, France',
      rating: 4.6,
      pricePerNight: 220.0,
      imageUrl:
          'https://images.unsplash.com/photo-1533105079780-92b9be482077?auto=format&fit=crop&w=800&q=80',
      amenities: ['Sea View', 'Beach Access', 'Casino'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3601',
          name: 'Azure Room',
          description: 'Room with Mediterranean view',
          price: 220.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Balcony'],
        ),
      ],
    ),
    Hotel(
      id: '37',
      name: 'Lyon Gastronomy Inn',
      location: 'Lyon, France',
      rating: 4.4,
      pricePerNight: 180.0,
      imageUrl:
          'https://images.unsplash.com/photo-1478358161113-b0e11994a36b?auto=format&fit=crop&w=800&q=80',
      amenities: ['Gourmet Restaurant', 'City Center', 'Wine Cellar'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3701',
          name: 'Chef Suite',
          description: 'Cozy room for foodies',
          price: 180.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '38',
      name: 'Royal Madrid',
      location: 'Madrid, Spain',
      rating: 4.7,
      pricePerNight: 200.0,
      imageUrl:
          'https://images.unsplash.com/photo-1543783207-ec64e4d95325?auto=format&fit=crop&w=800&q=80',
      amenities: ['Near Palace', 'Rooftop Bar', 'Gym'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3801',
          name: 'Royal Room',
          description: 'Elegant city room',
          price: 200.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '39',
      name: 'Seville Orange Grove',
      location: 'Seville, Spain',
      rating: 4.8,
      pricePerNight: 190.0,
      imageUrl:
          'https://images.unsplash.com/photo-1559599238-308793637427?auto=format&fit=crop&w=800&q=80',
      amenities: ['Flamenco Show', 'Patio', 'Pool'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '3901',
          name: 'Patio Room',
          description: 'Room opening to courtyard',
          price: 190.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '40',
      name: 'Lisbon Hills',
      location: 'Lisbon, Portugal',
      rating: 4.6,
      pricePerNight: 160.0,
      imageUrl:
          'https://images.unsplash.com/photo-1565538006871-3375b4db919b?auto=format&fit=crop&w=800&q=80',
      amenities: ['River View', 'Tram Stop', 'Breakfast'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4001',
          name: 'Hill View Room',
          description: 'Bright room with view',
          price: 160.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560448204-603b3fc33ddc?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '41',
      name: 'Porto Wine Lodge',
      location: 'Porto, Portugal',
      rating: 4.7,
      pricePerNight: 170.0,
      imageUrl:
          'https://images.unsplash.com/photo-1587875931252-0cde42718e47?auto=format&fit=crop&w=800&q=80',
      amenities: ['River Douro View', 'Wine Tasting', 'Terrace'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4101',
          name: 'River Suite',
          description: 'Suite with balcony',
          price: 170.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '42',
      name: 'Zurich Lakefront',
      location: 'Zurich, Switzerland',
      rating: 4.9,
      pricePerNight: 350.0,
      imageUrl:
          'https://images.unsplash.com/photo-1515488764276-beab7607c1e6?auto=format&fit=crop&w=800&q=80',
      amenities: ['Lake View', 'Spa', 'Fine Dining'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4201',
          name: 'Lake Suite',
          description: 'Luxury suite on the lake',
          price: 350.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '43',
      name: 'Geneva Diplomat',
      location: 'Geneva, Switzerland',
      rating: 4.8,
      pricePerNight: 380.0,
      imageUrl:
          'https://images.unsplash.com/photo-1510425463958-dcc24b986163?auto=format&fit=crop&w=800&q=80',
      amenities: ['Jet d\'Eau View', 'Conference Center', 'Gym'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4301',
          name: 'Executive Room',
          description: 'Room for business travelers',
          price: 380.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1552321554-5fefe8c9ef14?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Work Desk'],
        ),
      ],
    ),
    Hotel(
      id: '44',
      name: 'Vienna Opera House',
      location: 'Vienna, Austria',
      rating: 4.7,
      pricePerNight: 230.0,
      imageUrl:
          'https://images.unsplash.com/photo-1516550893923-42d28e5677af?auto=format&fit=crop&w=800&q=80',
      amenities: ['Near Opera', 'Classical Decor', 'Cafe'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4401',
          name: 'Classic Room',
          description: 'Elegant Viennese room',
          price: 230.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '45',
      name: 'Prague Castle View',
      location: 'Prague, Czech Republic',
      rating: 4.6,
      pricePerNight: 150.0,
      imageUrl:
          'https://images.unsplash.com/photo-1541849546-216549ae216d?auto=format&fit=crop&w=800&q=80',
      amenities: ['Castle View', 'Old Town Square', 'Bar'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4501',
          name: 'Castle Room',
          description: 'Room with a view of history',
          price: 150.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560969184-10fe8719e047?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '46',
      name: 'Budapest Thermal',
      location: 'Budapest, Hungary',
      rating: 4.5,
      pricePerNight: 120.0,
      imageUrl:
          'https://images.unsplash.com/photo-1516962215378-7fa2e137ae93?auto=format&fit=crop&w=800&q=80',
      amenities: ['Thermal Bath', 'Danube View', 'Spa'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4601',
          name: 'Spa Room',
          description: 'Relaxing room with spa access',
          price: 120.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560185007-c5ca9d2c014d?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '47',
      name: 'Brussels Grand Place',
      location: 'Brussels, Belgium',
      rating: 4.4,
      pricePerNight: 160.0,
      imageUrl:
          'https://images.unsplash.com/photo-1510422164475-43a059c2354c?auto=format&fit=crop&w=800&q=80',
      amenities: ['City Center', 'Chocolate Shop', 'Bar'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4701',
          name: 'Square View',
          description: 'Overlooking Grand Place',
          price: 160.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1550973886-a6e55c7a4ec3?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '48',
      name: 'Edinburgh Castle Hotel',
      location: 'Edinburgh, UK',
      rating: 4.7,
      pricePerNight: 210.0,
      imageUrl:
          'https://images.unsplash.com/photo-1534067783741-514d4dddb79e?auto=format&fit=crop&w=800&q=80',
      amenities: ['Castle View', 'Whisky Bar', 'History'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4801',
          name: 'Royal Mile Room',
          description: 'Historic room',
          price: 210.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '49',
      name: 'Dublin Green',
      location: 'Dublin, Ireland',
      rating: 4.5,
      pricePerNight: 180.0,
      imageUrl:
          'https://images.unsplash.com/photo-1550993950-7f938d21b01c?auto=format&fit=crop&w=800&q=80',
      amenities: ['Pub', 'Liffey View', 'Live Music'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '4901',
          name: 'River Room',
          description: 'Cozy room by the river',
          price: 180.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560969184-10fe8719e047?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '50',
      name: 'Stockholm Archipelago',
      location: 'Stockholm, Sweden',
      rating: 4.8,
      pricePerNight: 240.0,
      imageUrl:
          'https://images.unsplash.com/photo-1497215842964-222b430dc0a1?auto=format&fit=crop&w=800&q=80',
      amenities: ['Waterfront', 'Sauna', 'Modern Design'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5001',
          name: 'Nordic Suite',
          description: 'Minimalist suite',
          price: 240.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '51',
      name: 'Oslo Fjord',
      location: 'Oslo, Norway',
      rating: 4.7,
      pricePerNight: 260.0,
      imageUrl:
          'https://images.unsplash.com/photo-1520699295475-b6d396db86c4?auto=format&fit=crop&w=800&q=80',
      amenities: ['Fjord View', 'Opera House', 'Skiing Nearby'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5101',
          name: 'Fjord Room',
          description: 'Room with stunning views',
          price: 260.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1544986581-efac024faf62?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '52',
      name: 'Copenhagen Harbour',
      location: 'Copenhagen, Denmark',
      rating: 4.6,
      pricePerNight: 220.0,
      imageUrl:
          'https://images.unsplash.com/photo-1513622470522-26c3c8a854bc?auto=format&fit=crop&w=800&q=80',
      amenities: ['Nyhavn View', 'Design Hotel', 'Bikes'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5201',
          name: 'Design Room',
          description: 'Danish design room',
          price: 220.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '53',
      name: 'Helsinki White',
      location: 'Helsinki, Finland',
      rating: 4.5,
      pricePerNight: 200.0,
      imageUrl:
          'https://images.unsplash.com/photo-1520288289068-07e3768c7e60?auto=format&fit=crop&w=800&q=80',
      amenities: ['Sauna', 'Cathedral View', 'Market Square'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5301',
          name: 'White Room',
          description: 'Bright and airy room',
          price: 200.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '54',
      name: 'Tallinn Old Town',
      location: 'Tallinn, Estonia',
      rating: 4.6,
      pricePerNight: 130.0,
      imageUrl:
          'https://images.unsplash.com/photo-1550850839-8a543eda1363?auto=format&fit=crop&w=800&q=80',
      amenities: ['Medieval Charm', 'Spa', 'Fireplace'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5401',
          name: 'Knight Room',
          description: 'Medieval style room',
          price: 130.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1549449857-e85d41f3e8f8?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '55',
      name: 'Riga Art Nouveau',
      location: 'Riga, Latvia',
      rating: 4.5,
      pricePerNight: 110.0,
      imageUrl:
          'https://images.unsplash.com/photo-1560060965-09f4b93b8e57?auto=format&fit=crop&w=800&q=80',
      amenities: ['Architecture Tour', 'Old Town', 'Bar'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5501',
          name: 'Art Room',
          description: 'Art Nouveau decor',
          price: 110.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560969184-10fe8719e047?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '56',
      name: 'Vilnius Amber',
      location: 'Vilnius, Lithuania',
      rating: 4.4,
      pricePerNight: 100.0,
      imageUrl:
          'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?auto=format&fit=crop&w=800&q=80',
      amenities: ['Old Town', 'Amber Shop', 'Church View'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5601',
          name: 'Amber Suite',
          description: 'Warm and cozy suite',
          price: 100.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '57',
      name: 'Warsaw Palace',
      location: 'Warsaw, Poland',
      rating: 4.6,
      pricePerNight: 140.0,
      imageUrl:
          'https://images.unsplash.com/photo-1506543949980-60b6af9c97b8?auto=format&fit=crop&w=800&q=80',
      amenities: ['Royal Route', 'History', 'Fine Dining'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5701',
          name: 'Palace Room',
          description: 'Reconstructed luxury',
          price: 140.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1550973886-a6e55c7a4ec3?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '58',
      name: 'Krakow Square',
      location: 'Krakow, Poland',
      rating: 4.7,
      pricePerNight: 130.0,
      imageUrl:
          'https://images.unsplash.com/photo-1534351590666-13e3e96b5017?auto=format&fit=crop&w=800&q=80',
      amenities: ['Main Square', 'Wawel Castle', 'Nightlife'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5801',
          name: 'Square View',
          description: 'View of the Cloth Hall',
          price: 130.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '59',
      name: 'Bucharest Little Paris',
      location: 'Bucharest, Romania',
      rating: 4.4,
      pricePerNight: 110.0,
      imageUrl:
          'https://images.unsplash.com/photo-1587595431973-160d0d94add1?auto=format&fit=crop&w=800&q=80',
      amenities: ['Old Town', 'Architecture', 'Parks'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '5901',
          name: 'Urban Suite',
          description: 'City center suite',
          price: 110.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '60',
      name: 'Sofia Vitosha',
      location: 'Sofia, Bulgaria',
      rating: 4.3,
      pricePerNight: 90.0,
      imageUrl:
          'https://images.unsplash.com/photo-1558913926-d716f9a3f461?auto=format&fit=crop&w=800&q=80', // Fixed broken URL
      amenities: ['Mountain View', 'Cathedral', 'Spa'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6001',
          name: 'Mountain Room',
          description: 'View of Vitosha mountain',
          price: 90.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560185007-c5ca9d2c014d?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '61',
      name: 'Bangkok Riverfront',
      location: 'Bangkok, Thailand',
      rating: 4.6,
      pricePerNight: 120.0,
      imageUrl:
          'https://images.unsplash.com/photo-1552566626-52f8b828add9?auto=format&fit=crop&w=800&q=80',
      amenities: ['Chao Phraya View', 'Rooftop Bar', 'Spa'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6101',
          name: 'River Suite',
          description: 'Luxury by the river',
          price: 120.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '62',
      name: 'Chiang Mai Retreat',
      location: 'Chiang Mai, Thailand',
      rating: 4.7,
      pricePerNight: 80.0,
      imageUrl:
          'https://images.unsplash.com/photo-1512413346549-d17e764724a4?auto=format&fit=crop&w=800&q=80',
      amenities: ['Old City', 'Temples', 'Night Market'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6201',
          name: 'Lanna Room',
          description: 'Northern Thai style',
          price: 80.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Teak Furniture'],
        ),
      ],
    ),
    Hotel(
      id: '63',
      name: 'Hanoi Heritage',
      location: 'Hanoi, Vietnam',
      rating: 4.5,
      pricePerNight: 70.0,
      imageUrl:
          'https://images.unsplash.com/photo-1534067783741-514d4dddb79e?auto=format&fit=crop&w=800&q=80', // Reusing ID for simplicity
      amenities: ['Old Quarter', 'Lake View', 'Street Food'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6301',
          name: 'Quarter Room',
          description: 'Heart of the action',
          price: 70.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560969184-10fe8719e047?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Balcony'],
        ),
      ],
    ),
    Hotel(
      id: '64',
      name: 'Ho Chi Minh Sky',
      location: 'Ho Chi Minh City, Vietnam',
      rating: 4.6,
      pricePerNight: 90.0,
      imageUrl:
          'https://images.unsplash.com/photo-1583037189850-1921ae7c6c22?auto=format&fit=crop&w=800&q=80',
      amenities: ['Pool', 'Rooftop', 'War Museum Nearby'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6401',
          name: 'Sky Room',
          description: 'Modern city views',
          price: 90.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '65',
      name: 'Singapore Marina',
      location: 'Singapore',
      rating: 4.9,
      pricePerNight: 400.0,
      imageUrl:
          'https://images.unsplash.com/photo-1565557623262-b51c2513a641?auto=format&fit=crop&w=800&q=80',
      amenities: ['Infinity Pool', 'Gardens by the Bay', 'Casino'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6501',
          name: 'Bay Room',
          description: 'Iconic bay views',
          price: 400.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560448204-603b3fc33ddc?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '66',
      name: 'Manila Bay View',
      location: 'Manila, Philippines',
      rating: 4.4,
      pricePerNight: 80.0,
      imageUrl:
          'https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?auto=format&fit=crop&w=800&q=80',
      amenities: ['Sunset View', 'Pool', 'Mall Nearby'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6601',
          name: 'Sunset Room',
          description: 'Famous sunset views',
          price: 80.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560185007-c5ca9d2c014d?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '67',
      name: 'Boracay White Beach',
      location: 'Boracay, Philippines',
      rating: 4.8,
      pricePerNight: 150.0,
      imageUrl:
          'https://images.unsplash.com/photo-1588880331179-bc9b93a8cb5e?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['White Sand', 'Party', 'Water Sports'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6701',
          name: 'Beachfront',
          description: 'Steps to the beach',
          price: 150.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590523741831-ab7e8b8f9c7f?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '68',
      name: 'Taipei 101 View',
      location: 'Taipei, Taiwan',
      rating: 4.7,
      pricePerNight: 180.0,
      imageUrl:
          'https://images.unsplash.com/photo-1496417263034-38ec4f0d6b21?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['101 View', 'Night Market', 'Metro'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6801',
          name: 'Tower Room',
          description: 'View of Taipei 101',
          price: 180.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '69',
      name: 'Hong Kong Harbour',
      location: 'Hong Kong',
      rating: 4.8,
      pricePerNight: 300.0,
      imageUrl:
          'https://images.unsplash.com/photo-1536768138796-3c91d5b31d52?auto=format&fit=crop&w=800&q=80',
      amenities: ['Victoria Harbour', 'Dim Sum', 'Ferry'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '6901',
          name: 'Harbour Suite',
          description: 'Stunning skyline views',
          price: 300.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560448204-603b3fc33ddc?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '70',
      name: 'Shanghai Bund',
      location: 'Shanghai, China',
      rating: 4.8,
      pricePerNight: 250.0,
      imageUrl:
          'https://images.unsplash.com/photo-1474181487882-5abf3f0ba6c2?auto=format&fit=crop&w=800&q=80',
      amenities: ['The Bund', 'Skyline', 'History'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7001',
          name: 'Bund Room',
          description: 'Historical architecture view',
          price: 250.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '71',
      name: 'Beijing Palace',
      location: 'Beijing, China',
      rating: 4.7,
      pricePerNight: 200.0,
      imageUrl:
          'https://images.unsplash.com/photo-1508804185872-d7badad00f7d?auto=format&fit=crop&w=800&q=80',
      amenities: ['Forbidden City', 'Hutong', 'Duck'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7101',
          name: 'Imperial Room',
          description: 'Traditional style',
          price: 200.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1549449857-e85d41f3e8f8?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '72',
      name: 'Mumbai Marine Drive',
      location: 'Mumbai, India',
      rating: 4.6,
      pricePerNight: 160.0,
      imageUrl:
          'https://images.unsplash.com/photo-1567157577867-05ccb1388e66?auto=format&fit=crop&w=800&q=80',
      amenities: ['Sea View', 'Gateway of India', 'Bollywood'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7201',
          name: 'Marine Room',
          description: 'Queen\'s Necklace view',
          price: 160.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560185007-c5ca9d2c014d?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '73',
      name: 'New Delhi Imperial',
      location: 'New Delhi, India',
      rating: 4.7,
      pricePerNight: 150.0,
      imageUrl:
          'https://images.unsplash.com/photo-1560067174-c5a3a8f37060?auto=format&fit=crop&w=800&q=80',
      amenities: ['Colonial Charm', 'Gardens', 'Spa'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7301',
          name: 'Heritage Room',
          description: 'Classic luxury',
          price: 150.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1550973886-a6e55c7a4ec3?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '74',
      name: 'Colombo Ocean',
      location: 'Colombo, Sri Lanka',
      rating: 4.4,
      pricePerNight: 100.0,
      imageUrl:
          'https://images.unsplash.com/photo-1588880331179-bc9b93a8cb5e?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['Galle Face', 'Pool', 'Seafood'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7401',
          name: 'Ocean Room',
          description: 'Indian Ocean view',
          price: 100.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Balcony'],
        ),
      ],
    ),
    Hotel(
      id: '75',
      name: 'Kathmandu Peak',
      location: 'Kathmandu, Nepal',
      rating: 4.3,
      pricePerNight: 80.0,
      imageUrl:
          'https://images.unsplash.com/photo-1544144433-d50aff500b91?auto=format&fit=crop&w=800&q=80',
      amenities: ['Himalaya View', 'Temple', 'Trekking Info'],
      isShariahCompliant: false,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7501',
          name: 'Peak Room',
          description: 'View of the peaks',
          price: 80.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560969184-10fe8719e047?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Heater'],
        ),
      ],
    ),
    Hotel(
      id: '76',
      name: 'Lahore Fort Heritage',
      location: 'Lahore, Pakistan',
      rating: 4.5,
      pricePerNight: 70.0,
      imageUrl:
          'https://images.unsplash.com/photo-1587595431973-160d0d94add1?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['History', 'Food Street', 'Culture'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7601',
          name: 'Heritage Room',
          description: 'Traditional design',
          price: 70.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1618773928121-c32242e63f39?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Double Bed'],
        ),
      ],
    ),
    Hotel(
      id: '77',
      name: 'Karachi Coast',
      location: 'Karachi, Pakistan',
      rating: 4.2,
      pricePerNight: 60.0,
      imageUrl:
          'https://images.unsplash.com/photo-1510798831971-661eb04b3739?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['Sea View', 'Clifton Beach', 'Mall'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7701',
          name: 'Coast Room',
          description: 'Notes of the sea',
          price: 60.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['AC'],
        ),
      ],
    ),
    Hotel(
      id: '78',
      name: 'Riyadh Kingdom',
      location: 'Riyadh, Saudi Arabia',
      rating: 4.8,
      pricePerNight: 250.0,
      imageUrl:
          'https://images.unsplash.com/photo-1586723812148-3b56a1c5031b?auto=format&fit=crop&w=800&q=80',
      amenities: ['Skybridge', 'Luxury Shopping', 'Fine Dining'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7801',
          name: 'Kingdom Suite',
          description: 'Luxury in the sky',
          price: 250.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560448204-603b3fc33ddc?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '79',
      name: 'Jeddah Red Sea',
      location: 'Jeddah, Saudi Arabia',
      rating: 4.7,
      pricePerNight: 200.0,
      imageUrl:
          'https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['Corniche', 'Red Sea View', 'Aquarium'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '7901',
          name: 'Sea Suite',
          description: 'Relaxing sea view',
          price: 200.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Balcony'],
        ),
      ],
    ),
    Hotel(
      id: '80',
      name: 'Kuwait Towers Inn',
      location: 'Kuwait City, Kuwait',
      rating: 4.6,
      pricePerNight: 190.0,
      imageUrl:
          'https://images.unsplash.com/photo-1578895210405-907a5e4b9e24?auto=format&fit=crop&w=800&q=80',
      amenities: ['Towers View', 'Shopping', 'Gulf View'],
      isShariahCompliant: true,
      reviews: _mockReviews,
      rooms: [
        RoomType(
          id: '8001',
          name: 'Tower Room',
          description: 'Modern comfort',
          price: 190.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1550973886-a6e55c7a4ec3?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '81',
      name: 'Muscat Oman Resort',
      location: 'Muscat, Oman',
      rating: 4.8,
      pricePerNight: 280.0,
      imageUrl:
          'https://images.unsplash.com/photo-1590490360636-c7b8f9361399?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['Beach', 'Souq', 'Opera'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '8101',
          name: 'Oman Suite',
          description: 'Traditional luxury',
          price: 280.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1560448204-603b3fc33ddc?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['King Bed'],
        ),
      ],
    ),
    Hotel(
      id: '82',
      name: 'Manama Bay',
      location: 'Manama, Bahrain',
      rating: 4.5,
      pricePerNight: 160.0,
      imageUrl:
          'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['Bay View', 'Souq', 'Nightlife'],
      isShariahCompliant: true,
      rooms: [
        RoomType(
          id: '8201',
          name: 'Bay Room',
          description: 'View of the bay',
          price: 160.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1550973886-a6e55c7a4ec3?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Queen Bed'],
        ),
      ],
    ),
    Hotel(
      id: '83',
      name: 'Tel Aviv Beach',
      location: 'Tel Aviv, Israel',
      rating: 4.7,
      pricePerNight: 220.0,
      imageUrl:
          'https://images.unsplash.com/photo-1514890547357-a9ee288728e0?auto=format&fit=crop&w=800&q=80', // Reusing ID
      amenities: ['Beach', 'Bauhaus', 'Nightlife'],
      isShariahCompliant: false,
      rooms: [
        RoomType(
          id: '8301',
          name: 'White City Room',
          description: 'Modern decor',
          price: 220.0,
          imageUrls: [
            'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80',
          ],
          amenities: ['Balcony'],
        ),
      ],
    ),
  ];

  static Map<String, String> mockUsers = {
    'test@swiftretreat.com': 'Password123!',
  };
}
