class Facilities {
  final String svgIcon;
  final String name;
  final String? total;

  Facilities({
    required this.svgIcon,
    required this.name,
    this.total,
  });
}

final List<Facilities> facilities = [
  Facilities(
    svgIcon: 'assets/icons/wifi.svg',
    name: 'Wifi',
  ),
  Facilities(
    svgIcon: 'assets/icons/eat.svg',
    name: 'Eat',
    total: '3',
  ),
  Facilities(
    svgIcon: 'assets/icons/tub.svg',
    name: 'Tub',
    total: '1,234',
  ),
  Facilities(
    svgIcon: 'assets/icons/pool.svg',
    name: 'Pool',
  ),
];
