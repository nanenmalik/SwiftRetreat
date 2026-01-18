class RoomType {
  final String id;
  final String name;
  final String description;
  final double price;
  final List<String> imageUrls;
  final List<String> amenities;

  RoomType({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrls,
    required this.amenities,
  });
}

class Review {
  final String id;
  final String username;
  final double rating;
  final String comment;
  final DateTime date;

  Review({
    required this.id,
    required this.username,
    required this.rating,
    required this.comment,
    required this.date,
  });
}

class Hotel {
  final String id;
  final String name;
  final String location;
  final double rating;
  final double pricePerNight; // Base price or starting price
  final String imageUrl;
  final List<String> amenities;
  final bool isShariahCompliant;
  final List<RoomType> rooms;
  final List<Review> reviews;

  Hotel({
    required this.id,
    required this.name,
    required this.location,
    required this.rating,
    required this.pricePerNight,
    required this.imageUrl,
    required this.amenities,
    required this.isShariahCompliant,
    this.rooms = const [],
    this.reviews = const [],
  });
}
