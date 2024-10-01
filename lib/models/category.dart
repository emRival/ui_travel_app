class Category {
  final String name;
  final bool? selected;

  Category({required this.name, this.selected});
}

final List<Category> categories = [
  Category(name: 'Locations', selected: true),
  Category(name: 'Hotels'),
  Category(name: 'Foods'),
  Category(name: 'Advantures'),
  Category(name: 'Events'),
];
