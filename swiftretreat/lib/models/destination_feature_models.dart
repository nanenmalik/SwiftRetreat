class Food {
  final String id;
  final String name;
  final String description; // e.g. "Traditional Balinese Rice"
  final String imageUrl;
  final double rating;
  final String location;
  final String priceRange; // e.g. "$10 - $20"

  Food({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.location,
    required this.priceRange,
  });
}

class Activity {
  final String id;
  final String name;
  final String description; // e.g. "Jungle Swing"
  final String imageUrl;
  final double rating;
  final String location;
  final double price;

  Activity({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.location,
    required this.price,
  });
}
