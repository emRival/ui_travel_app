class Popular {
  final String name;
  final String imageAsset;
  final String rating;
  final String location;
  final bool? selected;

  Popular({
    required this.name,
    required this.imageAsset,
    required this.rating,
    required this.location,
    this.selected,
  });
}

final List<Popular> populars = [
  Popular(
    name: 'Florence',
    imageAsset: 'assets/images/florence.jpg',
    rating: '4.5',
    location: 'Italy',
    selected: true
  ),
  Popular(
    name: 'St. Petersburg',
    imageAsset: 'assets/images/petersburg.jpg',
    rating: '4.8',
    location: 'Russia',
  ),
  Popular(
    name: 'Bangkok',
    imageAsset: 'assets/images/bangkok.jpg',
    rating: '4.5',
    location: 'Thailand',
    selected: true,
  ),
  Popular(
    name: 'Charleston',
    imageAsset: 'assets/images/charleston.jpg',
    rating: '4.8',
    location: 'United States',
  ),
];
