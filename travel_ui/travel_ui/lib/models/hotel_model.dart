class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.price,
    this.address,
    this.name,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Gracias Hotel',
    address: '203 Great Venium St.',
    price: 175,
  ),Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Hilton Hotel',
    address: '31 Paris Hilton Notingum St.',
    price: 205,
  ),Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Jung A Hotel',
    address: '100 Changsic Jung St.',
    price: 475,
  ),
];
