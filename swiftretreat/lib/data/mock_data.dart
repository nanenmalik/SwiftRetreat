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
  ];

  static Map<String, String> mockUsers = {
    'test@swiftretreat.com': 'Password123!',
  };
}
