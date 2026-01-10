class Hotel {
  final String id;
  final String name;
  final String location;
  final double rating;
  final double pricePerNight;
  final String imageUrl;
  final List<String> amenities;
  final bool isShariahCompliant;

  Hotel({
    required this.id,
    required this.name,
    required this.location,
    required this.rating,
    required this.pricePerNight,
    required this.imageUrl,
    required this.amenities,
    required this.isShariahCompliant,
  });
}
